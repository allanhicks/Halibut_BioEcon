#Code to run simulations for ABM preliminary analysis in 2018
#Uses code originally started by Curry Cunnigham, which was started by Steve Martell in his fishery footprint analysis
#Also incorporates ideas from very simple simulations started by Allan Hicks as shown in Appendix B of the April 2017 ABM Discussion paper

#For ABM, we need to only think of 3 fisheries
### 1) directed fishery,  
### 2) trawl groundfish fishery, and 
### 3) longline groundfish fishery

#Need variation in length-at-age
### This may introduce complexity that is not needed
### Can use age as a proxy for selectivity and O32, etc. (need to link back to length though)
### Is it better than assuming what the length-age relationship is and what the length-based selex is?

require(xlsx)

#Working Directory
setwd("C:/GitHub/Halibut_BioEcon")

#Sources
source('R/Halibut-Plot-Fxns.R')
source('R/ricker-recruit.R')
source('R/beverton-holt-recruit.R')
source('R/get-fished-survivorship.R')

source('R/fisheryFootprint-plus.R') #This is an updated version of Steve's functions
source('R/read-update-params.R')
source('R/extract-params.R')
source('R/create-sim-objects.R')
source('R/HCR/HCR-linear.R')

source('R/calc-init-age-prop.R')


#=============================================================
##### CONTROL SECTION #####
in.control <- read.xlsx('Halibut Model Inputs.xlsx', sheetName='Control')
n.year <- in.control$Value[in.control$Par=='n.yrs'] #Number of years to simulate
years <- 1:n.year

n.sims <- in.control$Value[in.control$Par=='n.sims']

Bstart <- 500 #700#in.control$Value[in.control$Par=='Bstart'] #Starting Biomass

SSB0 <- 709e6 #709 million lbs from 2013 RARA

#============================================================
#For Harvest Control Rules
floors <- rep(0,4)
ceilings <- rep(0.0,4)#c(0.1,0.05,0.01,0.01)
ascent.range <- c(0.2,0.4)

