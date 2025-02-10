# -----------------------------------------------------------------------------
# Example code to replicate estimates from the MEPS-HC Data Tools summary tables
#
# Use, expenditures, and population, 2019
#
# Expenditures by event type and source of payment (SOP)
#  - Mean expenditure per person
#
# Selected event types:
#  - All event types (TOT)
#  - Emergency room visits (ERT)
#  - Inpatient stays (IPT)
#
# Input file: C:/MEPS/h216.dta (2019 full-year consolidated)
# -----------------------------------------------------------------------------

# Install/load packages and set global options --------------------------------

# Load packages (need to run every session)
library("survey")
library("dplyr")
library("haven")
library("MEPS")
library("tidyverse")
library("glue")
library("arrow")

# Set survey option for lonely psu
options(survey.lonely.psu = "adjust")



# Load FYC file ---------------------------------------------------------------

years <- seq(1996, 2019, by = 1)

# map(
#   years,
#   function(year) {
#     read_MEPS(
#       year = year,
#       type = "FYC"
#     ) %>%
#       write_parquet(
#         glue("data/{year}.parquet")
#       )
#   }
# )

frames_list <- list()

lapply(
  years,
  function(year) {
    dir(path = "data", pattern = "*.parquet") %>%
      read_parquet() %>%
      # assign(year, .)
  }
)


lapply(
  dir(path = "data", pattern = "*.parquet"),
  function(file) {
      read_parquet(file) %>%
      assign(file, .)
  }
)



# Aggregate payment sources ---------------------------------------------------
#
#  Notes:
#   - For 1996-1999: TRICARE label is CHM (changed to TRI in 2000)
#
#   - For 1996-2006: combined facility + SBD variables for hospital-type events
#      are not on PUF
#
#   - Starting in 2019, 'Other public' (OPU) and 'Other private' (OPR) are
#      dropped from the files
#
#
#  OTZ = other federal (OFD)  + State/local (STL) +
#         other unclassified sources (OSR) +
#         worker's comp (WCP) + Veteran's (VA)


df2007_ <- df2007 %>% mutate(

  # All event types
  TOTOTZ = TOTOFD07 + TOTSTL07 + TOTOSR07 + TOTWCP07 + TOTVA07,

  # Emergency room visits (facility + SBD expenses)
  ERTOTZ = ERTOFD07 + ERTSTL07 + ERTOSR07 + ERTWCP07 + ERTVA07,

  # Inpatient stays (facility + SBD expenses)
  IPTOTZ = IPTOFD07 + IPTSTL07 + IPTOSR07 + IPTWCP07 + IPTVA07
)
names(df2000)

df1997 %>% select(WTDPER97)

grep("VARPSU", names(df2007), value = TRUE)
# Define survey design --------------------------------------------------------

FYCdsgn <- svydesign(
  id = ~VARPSU,
  strata = ~VARSTR,
  weights = ~PERWT07F,
  data = df2007_,
  nest = TRUE
)

# Calculate estimates ---------------------------------------------------------
#
# Sources of payment (SOP) abbreviations:
#  - EXP: All sources
#  - SLF: Out-of-pocket
#  - PTR: Private insurance, including TRICARE (PTR)
#  - MCR: Medicare
#  - MCD: Medicaid
#  - OTZ: Other


# Mean expenditure per person, by source of payment

# All event types
svymean(~ TOTEXP07 + TOTSLF07 + TOTPTR07 + TOTMCR07 + TOTMCD07 + TOTOTZ, design = FYCdsgn)

# Emergency room visits
svymean(~ ERTEXP07 + ERTSLF07 + ERTPTR07 + ERTMCR07 + ERTMCD07 + ERTOTZ, design = FYCdsgn)

# Inpatient stays
svymean(~ IPTEXP07 + IPTSLF07 + IPTPTR07 + IPTMCR07 + IPTMCD07 + IPTOTZ, design = FYCdsgn)
