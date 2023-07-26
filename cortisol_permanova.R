# Library
library(ape)
library(vegan)
library(dplyr)
library(hagis)
library(ggplot2)
library(readr)

# Individuals
# Apollo
# beta diversity data
apollo_dist <- read_tsv("adonis/apollo_bray_curtis.tsv")
sample_list <- apollo_dist$...1
rownames(apollo_dist) <- apollo_dist$...1
apollo_dist <- apollo_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
apollo_meta <- read_tsv("ind-metadata-clustered/metadata-apollo.tsv")
apollo_meta <- apollo_meta[apollo_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
apollo_perm <- adonis2(apollo_dist ~ CortGroup, data = apollo_meta) 

# Bomassa
# beta diversity data
bomassa_dist <- read_tsv("adonis/bomassa_bray_curtis.tsv")
sample_list <- bomassa_dist$...1
rownames(bomassa_dist) <- bomassa_dist$...1
bomassa_dist <- bomassa_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
bomassa_meta <- read_tsv("ind-metadata-clustered/metadata-bomassa.tsv")
bomassa_meta <- bomassa_meta[bomassa_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
bomassa_perm <- adonis2(bomassa_dist ~ CortGroup, data = bomassa_meta) 

# Cenzoo
# beta diversity data
cenzoo_dist <- read_tsv("adonis/cenzoo_bray_curtis.tsv")
sample_list <- cenzoo_dist$...1
rownames(cenzoo_dist) <- cenzoo_dist$...1
cenzoo_dist <- cenzoo_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
cenzoo_meta <- read_tsv("ind-metadata-clustered/metadata-cenzoo.tsv")
cenzoo_meta <- cenzoo_meta[cenzoo_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
cenzoo_perm <- adonis2(cenzoo_dist ~ CortGroup, data = cenzoo_meta) 

# Charlie
# beta diversity data
charlie_dist <- read_tsv("adonis/charlie_bray_curtis.tsv")
sample_list <- charlie_dist$...1
rownames(charlie_dist) <- charlie_dist$...1
charlie_dist <- charlie_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
charlie_meta <- read_tsv("ind-metadata-clustered/metadata-charlie.tsv")
charlie_meta <- charlie_meta[charlie_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
charlie_perm <- adonis2(charlie_dist ~ CortGroup, data = charlie_meta) 

# Curtis
# beta diversity data
curtis_dist <- read_tsv("adonis/curtis_bray_curtis.tsv")
sample_list <- curtis_dist$...1
rownames(curtis_dist) <- curtis_dist$...1
curtis_dist <- curtis_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
curtis_meta <- read_tsv("ind-metadata-clustered/metadata-curtis.tsv")
curtis_meta <- curtis_meta[curtis_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
curtis_perm <- adonis2(curtis_dist ~ CortGroup, data = curtis_meta) 

# Dembe
# beta diversity data
dembe_dist <- read_tsv("adonis/dembe_bray_curtis.tsv")
sample_list <- dembe_dist$...1
rownames(dembe_dist) <- dembe_dist$...1
dembe_dist <- dembe_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
dembe_meta <- read_tsv("ind-metadata-clustered/metadata-dembe.tsv")
dembe_meta <- dembe_meta[dembe_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
dembe_perm <- adonis2(dembe_dist ~ CortGroup, data = dembe_meta) 

# Hadari
# beta diversity data
hadari_dist <- read_tsv("adonis/hadari_bray_curtis.tsv")
sample_list <- hadari_dist$...1
rownames(hadari_dist) <- hadari_dist$...1
hadari_dist <- hadari_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
hadari_meta <- read_tsv("ind-metadata-clustered/metadata-hadari.tsv")
hadari_meta <- hadari_meta[hadari_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
hadari_perm <- adonis2(hadari_dist ~ CortGroup, data = hadari_meta) 

# Jim
# beta diversity data
jim_dist <- read_tsv("adonis/jim_bray_curtis.tsv")
sample_list <- jim_dist$...1
rownames(jim_dist) <- jim_dist$...1
jim_dist <- jim_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
jim_meta <- read_tsv("ind-metadata-clustered/metadata-jim.tsv")
jim_meta <- jim_meta[jim_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
jim_perm <- adonis2(jim_dist ~ CortGroup, data = jim_meta) 

# Mosuba
# beta diversity data
mosuba_dist <- read_tsv("adonis/mosuba_bray_curtis.tsv")
sample_list <- mosuba_dist$...1
rownames(mosuba_dist) <- mosuba_dist$...1
mosuba_dist <- mosuba_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
mosuba_meta <- read_tsv("ind-metadata-clustered/metadata-mosuba.tsv")
mosuba_meta <- mosuba_meta[mosuba_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
mosuba_perm <- adonis2(mosuba_dist ~ CortGroup, data = mosuba_meta) 

# Patrick
# beta diversity data
patrick_dist <- read_tsv("adonis/patrick_bray_curtis.tsv")
sample_list <- patrick_dist$...1
rownames(patrick_dist) <- patrick_dist$...1
patrick_dist <- patrick_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
patrick_meta <- read_tsv("ind-metadata-clustered/metadata-patrick.tsv")
patrick_meta <- patrick_meta[patrick_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
patrick_perm <- adonis2(patrick_dist ~ CortGroup, data = patrick_meta) 



# Institutions
# Asheboro
# beta diversity data
asheboro_dist <- read_tsv("adonis/asheboro_bray_curtis.tsv")
sample_list <- asheboro_dist$...1
rownames(asheboro_dist) <- asheboro_dist$...1
asheboro_dist <- asheboro_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
asheboro_meta <- read_tsv("ind-metadata-clustered/metadata-asheboro.tsv")
asheboro_meta <- asheboro_meta[asheboro_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
asheboro_perm <- adonis2(asheboro_dist ~ CortGroup*AnimalName, data = asheboro_meta) # cort groups, then animal name

# Columbia
# beta diversity data
columbia_dist <- read_tsv("adonis/columbia_bray_curtis.tsv")
sample_list <- columbia_dist$...1
rownames(columbia_dist) <- columbia_dist$...1
columbia_dist <- columbia_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
columbia_meta <- read_tsv("ind-metadata-clustered/metadata-columbia.tsv")
columbia_meta <- columbia_meta[columbia_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
columbia_perm <- adonis2(columbia_dist ~ CortGroup*AnimalName, data = columbia_meta) # cort groups, then animal name

# Denver
# beta diversity data
denver_dist <- read_tsv("adonis/denver_bray_curtis.tsv")
sample_list <- denver_dist$...1
rownames(denver_dist) <- denver_dist$...1
denver_dist <- denver_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
denver_meta <- read_tsv("ind-metadata-clustered/metadata-denver.tsv")
denver_meta <- denver_meta[denver_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
denver_perm <- adonis2(denver_dist ~ CortGroup*AnimalName, data = denver_meta) # cort groups, then animal name



# All
# beta diversity data
all_dist <- read_tsv("adonis/all_bray_curtis.tsv")
sample_list <- all_dist$...1
rownames(all_dist) <- all_dist$...1
all_dist <- all_dist[,-1]

# metadata; remove samples from metadata which were dropped in analysis due to poor quality
all_meta <- read_tsv("ind-metadata-clustered/metadata-all.tsv")
all_meta <- all_meta[all_meta$SampleID %in% sample_list, ]

# adonis PERMANOVA
all_perm <- adonis2(all_dist ~ CortGroup*AnimalName*Institution, data = all_meta) # cort groups, then animal name

