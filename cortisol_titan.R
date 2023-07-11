
# load package
library("TITAN2")

# Apollo
apollo_taxa <- read.csv("titan/apollo-taxa.csv", row.names = 1, header = TRUE)
apollo_taxa <- apollo_taxa[, colSums(apollo_taxa != 0) > 3]

# gradient (cortisol) data
apollo_cort <- read.csv("titan/apollo-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
apollo_titan <- titan(apollo_cort, apollo_taxa)

# Bomassa
bomassa_taxa <- read.csv("titan/bomassa-taxa.csv", row.names = 1, header = TRUE)
bomassa_taxa <- bomassa_taxa[, colSums(bomassa_taxa != 0) > 3]

# gradient (cortisol) data
bomassa_cort <- read.csv("titan/bomassa-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
bomassa_titan <- titan(bomassa_cort, bomassa_taxa)

# Cenzoo
# taxa data- remove columns with <3 occurences
cenzoo_taxa <- read.csv("titan/cenzoo-taxa.csv", row.names = 1, header = TRUE)
cenzoo_taxa <- cenzoo_taxa[, colSums(cenzoo_taxa != 0) > 3]

# gradient (cortisol) data
cenzoo_cort <- read.csv("titan/cenzoo-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
cenzoo_titan <- titan(cenzoo_cort, cenzoo_taxa)

# Charlie
charlie_taxa <- read.csv("titan/charlie-taxa.csv", row.names = 1, header = TRUE)
charlie_taxa <- charlie_taxa[, colSums(charlie_taxa != 0) > 3]

# gradient (cortisol) data
charlie_cort <- read.csv("titan/charlie-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
charlie_titan <- titan(charlie_cort, charlie_taxa)

# Curtis
curtis_taxa <- read.csv("titan/curtis-taxa.csv", row.names = 1, header = TRUE)
curtis_taxa <- curtis_taxa[, colSums(curtis_taxa != 0) > 3]

# gradient (cortisol) data
curtis_cort <- read.csv("titan/curtis-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
curtis_titan <- titan(curtis_cort, curtis_taxa)

# Dembe
dembe_taxa <- read.csv("titan/dembe-taxa.csv", row.names = 1, header = TRUE)
dembe_taxa <- dembe_taxa[, colSums(dembe_taxa != 0) > 3]

# gradient (cortisol) data
dembe_cort <- read.csv("titan/dembe-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
dembe_titan <- titan(dembe_cort, dembe_taxa)

# Hadari
hadari_taxa <- read.csv("titan/hadari-taxa.csv", row.names = 1, header = TRUE)
hadari_taxa <- hadari_taxa[, colSums(hadari_taxa != 0) > 3]

# gradient (cortisol) data
hadari_cort <- read.csv("titan/hadari-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
hadari_titan <- titan(hadari_cort, hadari_taxa)

# Jim
jim_taxa <- read.csv("titan/jim-taxa.csv", row.names = 1, header = TRUE)
jim_taxa <- jim_taxa[, colSums(jim_taxa != 0) > 3]

# gradient (cortisol) data
jim_cort <- read.csv("titan/jim-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
jim_titan <- titan(jim_cort, jim_taxa)

# Mosuba
mosuba_taxa <- read.csv("titan/mosuba-taxa.csv", row.names = 1, header = TRUE)
mosuba_taxa <- mosuba_taxa[, colSums(mosuba_taxa != 0) > 3]

# gradient (cortisol) data
mosuba_cort <- read.csv("titan/mosuba-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
mosuba_titan <- titan(mosuba_cort, mosuba_taxa)

# Patrick
patrick_taxa <- read.csv("titan/patrick-taxa.csv", row.names = 1, header = TRUE)
patrick_taxa <- patrick_taxa[, colSums(patrick_taxa != 0) > 3]

# gradient (cortisol) data
patrick_cort <- read.csv("titan/patrick-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
patrick_titan <- titan(patrick_cort, patrick_taxa)

