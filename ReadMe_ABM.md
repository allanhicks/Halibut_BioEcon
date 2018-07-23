#Code to run simulations for ABM preliminary analysis in 2018
Uses code originally started by Curry Cunnigham, which was started by Steve Martell in his fishery footprint analysis. Also incorporates ideas from very simple simulations started by Allan Hicks as shown in Appendix B of the April 2017 ABM Discussion paper.

The simulations for ABM evaluation are done with the following structure. The area of focus is the Bering Sea Aleutian Islands region (BSAI). Pacific halibut migrate in and out of this region, thus the immigration and emigration needs to be accounted for. Instead of keeping track of the population dynamics in each area, the BSAI region is the focus and all other areas are considered "outside" the area of focus. Fish may move to the outside area or into the BSAI from the outside area, but because the migration is not well understood, various hypotheses about this movement in and out ("downstream" effects) are evaluated.

For the ABM simulations, we need to only think of 3 fisheries:
1. directed fishery,  
2. trawl groundfish fishery, and 
3. longline groundfish fishery


Using a length-weight relationship complicates the simulations and uses dynamics that are variable and less understood. Using weight-at-age is still varaible, but is a more direct relationship that is simpler to simulate and can produce the same results. There is no need for the initial simulations to model length. Changes in selectivity can be related to changes to weight at age.

