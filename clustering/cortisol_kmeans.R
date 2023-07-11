
# Library
library(readxl)
library(stats)

# k means clustering of cortisol fGCM data, 5 groups across all animals
metadata <- read_excel("Mapping-Cortisol.xlsx", 
                               sheet = "Cortisol groupings")

kmcort <-  kmeans(metadata$CortfGCMs, 5)

metadata$CortGroup <- kmcort$cluster

write_tsv(metadata, file="metadata.tsv")

# k means clustering of cortisol fGCM data, 4 groups by individual; need to re-add "categorical" row due to type constraints necessary for analysis
# Apollo
metadata_apollo <- read_delim("ind-metadata/metadata-apollo.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_apollo <-  kmeans(metadata_apollo$CortfGCMs, 4)
metadata_apollo$CortGroup <- kmcort_apollo$cluster
write_tsv(metadata_apollo, file="ind-metadata-clustered/metadata-apollo.tsv")

# Bomassa
metadata_bomassa <- read_delim("ind-metadata/metadata-bomassa.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_bomassa <-  kmeans(metadata_bomassa$CortfGCMs, 4)
metadata_bomassa$CortGroup <- kmcort_bomassa$cluster
write_tsv(metadata_bomassa, file="ind-metadata-clustered/metadata-bomassa.tsv")

# Cenzoo
metadata_cenzoo <- read_delim("ind-metadata/metadata-cenzoo.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_cenzoo <-  kmeans(metadata_cenzoo$CortfGCMs, 4)
metadata_cenzoo$CortGroup <- kmcort_cenzoo$cluster
write_tsv(metadata_cenzoo, file="ind-metadata-clustered/metadata-cenzoo.tsv")

# Charlie
metadata_charlie <- read_delim("ind-metadata/metadata-charlie.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_charlie <-  kmeans(metadata_charlie$CortfGCMs, 4)
metadata_charlie$CortGroup <- kmcort_charlie$cluster
write_tsv(metadata_charlie, file="ind-metadata-clustered/metadata-charlie.tsv")

# Curtis
metadata_curtis <- read_delim("ind-metadata/metadata-curtis.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_curtis <-  kmeans(metadata_curtis$CortfGCMs, 4)
metadata_curtis$CortGroup <- kmcort_curtis$cluster
write_tsv(metadata_curtis, file="ind-metadata-clustered/metadata-curtis.tsv")

# Dembe
metadata_dembe <- read_delim("ind-metadata/metadata-dembe.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_dembe <-  kmeans(metadata_dembe$CortfGCMs, 4)
metadata_dembe$CortGroup <- kmcort_dembe$cluster
write_tsv(metadata_dembe, file="ind-metadata-clustered/metadata-dembe.tsv")

# Hadari
metadata_hadari <- read_delim("ind-metadata/metadata-hadari.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_hadari <-  kmeans(metadata_hadari$CortfGCMs, 4)
metadata_hadari$CortGroup <- kmcort_hadari$cluster
write_tsv(metadata_hadari, file="ind-metadata-clustered/metadata-hadari.tsv")

# Jim
metadata_jim <- read_delim("ind-metadata/metadata-jim.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_jim <-  kmeans(metadata_jim$CortfGCMs, 4)
metadata_jim$CortGroup <- kmcort_jim$cluster
write_tsv(metadata_jim, file="ind-metadata-clustered/metadata-jim.tsv")

# Mosuba
metadata_mosuba <- read_delim("ind-metadata/metadata-mosuba.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_mosuba <-  kmeans(metadata_mosuba$CortfGCMs, 4)
metadata_mosuba$CortGroup <- kmcort_mosuba$cluster
write_tsv(metadata_mosuba, file="ind-metadata-clustered/metadata-mosuba.tsv")

# Patrick
metadata_patrick <- read_delim("ind-metadata/metadata-patrick.tsv", 
                              delim = "\t", escape_double = FALSE, 
                              trim_ws = TRUE,
                              col_select = c(1:9),
                              col_types = "ccccccccd")

kmcort_patrick <-  kmeans(metadata_patrick$CortfGCMs, 4)
metadata_patrick$CortGroup <- kmcort_patrick$cluster
write_tsv(metadata_patrick, file="ind-metadata-clustered/metadata-patrick.tsv")

