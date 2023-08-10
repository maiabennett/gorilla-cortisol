
# load package
library(TITAN2)
library(ggplot2)

# Apollo
# taxa data- remove columns with <3 occurences, then rename with class/order/family
apollo_taxa <- read.csv("titan/apollo-taxa.csv", row.names = 1, header = TRUE)
apollo_taxa <- apollo_taxa[, which(colSums(apollo_taxa != 0) > 3)]
for (i in 1:ncol(apollo_taxa)) {
  fam <- strsplit(colnames(apollo_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(apollo_taxa)[i] <- newname
}

# gradient (cortisol) data
apollo_cort <- read.csv("titan/apollo-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
apollo_titan <- titan(apollo_cort, apollo_taxa)

# Bomassa
# taxa data- remove columns with <3 occurences
bomassa_taxa <- read.csv("titan/bomassa-taxa.csv", row.names = 1, header = TRUE)
bomassa_taxa <- bomassa_taxa[, which(colSums(bomassa_taxa != 0) > 3)]
for (i in 1:ncol(bomassa_taxa)) {
  fam <- strsplit(colnames(bomassa_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(bomassa_taxa)[i] <- newname
}


# gradient (cortisol) data
bomassa_cort <- read.csv("titan/bomassa-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
bomassa_titan <- titan(bomassa_cort, bomassa_taxa)

# Cenzoo
# taxa data- remove columns with <3 occurences
cenzoo_taxa <- read.csv("titan/cenzoo-taxa.csv", row.names = 1, header = TRUE)
cenzoo_taxa <- cenzoo_taxa[, which(colSums(cenzoo_taxa != 0) > 3)]
for (i in 1:ncol(cenzoo_taxa)) {
  fam <- strsplit(colnames(cenzoo_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(cenzoo_taxa)[i] <- newname
}


# gradient (cortisol) data
cenzoo_cort <- read.csv("titan/cenzoo-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
cenzoo_titan <- titan(cenzoo_cort, cenzoo_taxa)

# Charlie
# taxa data- remove columns with <3 occurences
charlie_taxa <- read.csv("titan/charlie-taxa.csv", row.names = 1, header = TRUE)
charlie_taxa <- charlie_taxa[, which(colSums(charlie_taxa != 0) > 3)]
for (i in 1:ncol(charlie_taxa)) {
  fam <- strsplit(colnames(charlie_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(charlie_taxa)[i] <- newname
}


# gradient (cortisol) data
charlie_cort <- read.csv("titan/charlie-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
charlie_titan <- titan(charlie_cort, charlie_taxa)

# Curtis
# taxa data- remove columns with <3 occurences
curtis_taxa <- read.csv("titan/curtis-taxa.csv", row.names = 1, header = TRUE)
curtis_taxa <- curtis_taxa[, which(colSums(curtis_taxa != 0) > 3)]
for (i in 1:ncol(curtis_taxa)) {
  fam <- strsplit(colnames(curtis_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(curtis_taxa)[i] <- newname
}


# gradient (cortisol) data
curtis_cort <- read.csv("titan/curtis-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
curtis_titan <- titan(curtis_cort, curtis_taxa)

# Dembe
# taxa data- remove columns with <3 occurences
dembe_taxa <- read.csv("titan/dembe-taxa.csv", row.names = 1, header = TRUE)
dembe_taxa <- dembe_taxa[, which(colSums(dembe_taxa != 0) > 3)]
for (i in 1:ncol(dembe_taxa)) {
  fam <- strsplit(colnames(dembe_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(dembe_taxa)[i] <- newname
}


# gradient (cortisol) data
dembe_cort <- read.csv("titan/dembe-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
dembe_titan <- titan(dembe_cort, dembe_taxa)

# Hadari
# taxa data- remove columns with <3 occurences
hadari_taxa <- read.csv("titan/hadari-taxa.csv", row.names = 1, header = TRUE)
hadari_taxa <- hadari_taxa[, which(colSums(hadari_taxa != 0) > 3)]
for (i in 1:ncol(hadari_taxa)) {
  fam <- strsplit(colnames(hadari_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(hadari_taxa)[i] <- newname
}


# gradient (cortisol) data
hadari_cort <- read.csv("titan/hadari-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
hadari_titan <- titan(hadari_cort, hadari_taxa)

# Jim
# taxa data- remove columns with <3 occurences
jim_taxa <- read.csv("titan/jim-taxa.csv", row.names = 1, header = TRUE)
jim_taxa <- jim_taxa[, which(colSums(jim_taxa != 0) > 3)]
for (i in 1:ncol(jim_taxa)) {
  fam <- strsplit(colnames(jim_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(jim_taxa)[i] <- newname
}


# gradient (cortisol) data
jim_cort <- read.csv("titan/jim-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
jim_titan <- titan(jim_cort, jim_taxa)

# Mosuba
# taxa data- remove columns with <3 occurences
mosuba_taxa <- read.csv("titan/mosuba-taxa.csv", row.names = 1, header = TRUE)
mosuba_taxa <- mosuba_taxa[, which(colSums(mosuba_taxa != 0) > 3)]
for (i in 1:ncol(mosuba_taxa)) {
  fam <- strsplit(colnames(mosuba_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(mosuba_taxa)[i] <- newname
}


# gradient (cortisol) data
mosuba_cort <- read.csv("titan/mosuba-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
mosuba_titan <- titan(mosuba_cort, mosuba_taxa)

# Patrick
# taxa data- remove columns with <3 occurences
patrick_taxa <- read.csv("titan/patrick-taxa.csv", row.names = 1, header = TRUE)
patrick_taxa <- patrick_taxa[, which(colSums(patrick_taxa != 0) > 3)]
for (i in 1:ncol(patrick_taxa)) {
  fam <- strsplit(colnames(patrick_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(patrick_taxa)[i] <- newname
}


# gradient (cortisol) data
patrick_cort <- read.csv("titan/patrick-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
patrick_titan <- titan(patrick_cort, patrick_taxa)


# Asheboro
# taxa data- remove columns with <3 occurences
asheboro_taxa <- read.csv("titan/asheboro-taxa.csv", row.names = 1, header = TRUE)
asheboro_taxa <- asheboro_taxa[, which(colSums(asheboro_taxa != 0) > 3)]
for (i in 1:ncol(asheboro_taxa)) {
  fam <- strsplit(colnames(asheboro_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(asheboro_taxa)[i] <- newname
}


# gradient (cortisol) data
asheboro_cort <- read.csv("titan/asheboro-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
asheboro_titan <- titan(asheboro_cort, asheboro_taxa)

# Columbia
# taxa data- remove columns with <3 occurences
columbia_taxa <- read.csv("titan/columbia-taxa.csv", row.names = 1, header = TRUE)
columbia_taxa <- columbia_taxa[, which(colSums(columbia_taxa != 0) > 3)]
for (i in 1:ncol(columbia_taxa)) {
  fam <- strsplit(colnames(columbia_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(columbia_taxa)[i] <- newname
}


# gradient (cortisol) data
columbia_cort <- read.csv("titan/columbia-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
columbia_titan <- titan(columbia_cort, columbia_taxa)

# Denver
# taxa data- remove columns with <3 occurences
denver_taxa <- read.csv("titan/denver-taxa.csv", row.names = 1, header = TRUE)
denver_taxa <- denver_taxa[, which(colSums(denver_taxa != 0) > 3)]
for (i in 1:ncol(denver_taxa)) {
  fam <- strsplit(colnames(denver_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(denver_taxa)[i] <- newname
}


# gradient (cortisol) data
denver_cort <- read.csv("titan/denver-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
denver_titan <- titan(denver_cort, denver_taxa)

# All
# taxa data- remove columns with <3 occurences
all_taxa <- read.csv("titan/all-taxa.csv", row.names = 1, header = TRUE)
all_taxa <- all_taxa[, which(colSums(all_taxa != 0) > 3)]
for (i in 1:ncol(all_taxa)) {
  fam <- strsplit(colnames(all_taxa)[i], "[.]")
  newname <- substring(fam[[1]][3],4) # remove "c__"
  newname <- paste0(newname, ", ", substring(fam[[1]][4],4)) # remove "o__"
  newname <- paste0(newname, ", ", substring(fam[[1]][5],4)) # remove "f__"
  colnames(all_taxa)[i] <- newname
}


# gradient (cortisol) data
all_cort <- read.csv("titan/all-fGCMs.csv", row.names = 1, header = TRUE)

# TITAN
all_titan <- titan(all_cort, all_taxa)


# Visualization

windowsFonts(A = windowsFont("Times New Roman"))  # Specify font

# All
# works with data
plot_sumz(all_titan)
svglite("titan/all_taxa.svg")
plot_taxa(all_titan, cex.taxa = 0.5, fil1 = "blue", fil2 = "red")
dev.off()
ggp <- plot_sumz_density(all_titan, ribbon = FALSE, points = TRUE, xlabel = expression(paste("Fecal cortisol (fGCMs, ug/g)")))
ggsave("titan/all_sumz-density.svg", ggp)
ggp <- plot_taxa_ridges(all_titan)
ggsave("titan/all_taxa-ridges.svg", ggp, height=10, width=6)

# Ashebore
# works with data
plot_sumz(asheboro_titan)
svglite("titan/asheboro_taxa.svg")
plot_taxa(asheboro_titan, cex.taxa = 0.5, fil1 = "blue", fil2 = "red")
dev.off()
ggp <- plot_sumz_density(asheboro_titan, ribbon = FALSE, points = TRUE, xlabel = expression(paste("Fecal cortisol (fGCMs, ug/g)")))
ggsave("titan/asheboro_sumz-density.svg", ggp)
ggp <- plot_taxa_ridges(asheboro_titan)
ggsave("titan/asheboro_taxa-ridges.svg", ggp, height=10, width=6)

# Columbia
# doesn't work with data
plot_sumz(columbia_titan)
plot_taxa(columbia_titan)
plot_sumz_density(columbia_titan, ribbon = FALSE, points = TRUE)

# Denver
# doesn't work with data
plot_sumz(denver_titan)
plot_taxa(denver_titan)
plot_sumz_density(denver_titan, ribbon = FALSE, points = TRUE)

# Apollo
# doesn't work with data
plot_sumz(apollo_titan)
plot_taxa(apollo_titan)
plot_sumz_density(apollo_titan, ribbon = FALSE, points = TRUE)

# Bomassa
# doesn't work with data
plot_sumz(bomassa_titan)
plot_taxa(bomassa_titan)
plot_sumz_density(bomassa_titan, ribbon = FALSE, points = TRUE)

# Cenzoo
plot_sumz(cenzoo_titan)
plot_taxa(cenzoo_titan)
plot_sumz_density(cenzoo_titan, ribbon = FALSE, points = TRUE)

# Charlie
# doesn't work with data
plot_sumz(charlie_titan)
plot_taxa(charlie_titan)
plot_sumz_density(charlie_titan, ribbon = FALSE, points = TRUE)

# Curtis
# doesn't work with data
plot_sumz(curtis_titan)
plot_taxa(curtis_titan)
plot_sumz_density(curtis_titan, ribbon = FALSE, points = TRUE)

# Dembe
# doesn't work with data
plot_sumz(dembe_titan)
plot_taxa(dembe_titan)
plot_sumz_density(dembe_titan, ribbon = FALSE, points = TRUE)

# Hadari
# doesn't work with data
plot_sumz(hadari_titan)
plot_taxa(hadari_titan)
plot_sumz_density(hadari_titan, ribbon = FALSE, points = TRUE)

# Jim
# doesn't work with data
plot_sumz(jim_titan)
plot_taxa(jim_titan)
plot_sumz_density(jim_titan, ribbon = FALSE, points = TRUE)

# Mosuba
# doesn't work with data
plot_sumz(mosuba_titan)
plot_taxa(mosuba_titan)
plot_sumz_density(mosuba_titan, ribbon = FALSE, points = TRUE)

# Patrick
# doesn't work with data
plot_sumz(patrick_titan)
plot_taxa(patrick_titan)
plot_sumz_density(patrick_titan, ribbon = FALSE, points = TRUE)


