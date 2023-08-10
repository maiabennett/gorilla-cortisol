# library
library(readr)
library(ggplot2)

# Apollo
# read in cortisol data
apollo <- read_tsv("lmm/metadata-apollo.tsv")
cortisol <- apollo$CortfGCMs
faith <- apollo$faith_pd
shannon <- apollo$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(apollo, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(apollo, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
apollo_fpd <- lm(faith ~ cortisol, data = apollo)
summary(apollo_fpd)

# lm, Shannon Entropy
apollo_shan <- lm(shannon ~ cortisol, data = apollo)
summary(apollo_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(apollo_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(apollo, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/apollo_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(apollo_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(apollo, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/apollo_shannon.svg", plot=ggp)


# Bomassa 
# read in cortisol data
bomassa <- read_tsv("lmm/metadata-bomassa.tsv")
cortisol <- bomassa$CortfGCMs
faith <- bomassa$faith_pd
shannon <- bomassa$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(bomassa, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(bomassa, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
bomassa_fpd <- lm(faith ~ cortisol, data = bomassa)
summary(bomassa_fpd)

# lm, Shannon Entropy
bomassa_shan <- lm(shannon ~ cortisol, data = bomassa)
summary(bomassa_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(bomassa_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(bomassa, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/bomassa_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(bomassa_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(bomassa, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/bomassa_shannon.svg", plot=ggp)



# Cenzoo
# read in cortisol data
cenzoo <- read_tsv("lmm/metadata-cenzoo.tsv")
cortisol <- cenzoo$CortfGCMs
faith <- cenzoo$faith_pd
shannon <- cenzoo$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(cenzoo, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(cenzoo, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
cenzoo_fpd <- lm(faith ~ cortisol, data = cenzoo)
summary(cenzoo_fpd)

# lm, Shannon Entropy
cenzoo_shan <- lm(shannon ~ cortisol, data = cenzoo)
summary(cenzoo_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(cenzoo_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(cenzoo, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/cenzoo_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(cenzoo_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(cenzoo, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/cenzoo_shannon.svg", plot=ggp)


# Charlie
# read in cortisol data
charlie <- read_tsv("lmm/metadata-charlie.tsv")
cortisol <- charlie$CortfGCMs
faith <- charlie$faith_pd
shannon <- charlie$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(charlie, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(charlie, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
charlie_fpd <- lm(faith ~ cortisol, data = charlie)
summary(charlie_fpd)

# lm, Shannon Entropy
charlie_shan <- lm(shannon ~ cortisol, data = charlie)
summary(charlie_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(charlie_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(charlie, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/charlie_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(charlie_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(charlie, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/charlie_shannon.svg", plot=ggp)


# Curtis
# read in cortisol data
curtis <- read_tsv("lmm/metadata-curtis.tsv")
cortisol <- curtis$CortfGCMs
faith <- curtis$faith_pd
shannon <- curtis$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(curtis, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(curtis, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
curtis_fpd <- lm(faith ~ cortisol, data = curtis)
summary(curtis_fpd)

# lm, Shannon Entropy
curtis_shan <- lm(shannon ~ cortisol, data = curtis)
summary(curtis_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(curtis_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(curtis, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggsave("lmm/curtis_faithpd.svg", plot = ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(curtis_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(curtis, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggsave("lmm/curtis_shannon.svg", plot=ggp)

## Combined
ggp <- ggplot() +     
  geom_smooth(aes(x=cortisol, y = faith), data=curtis, method="lm", se = FALSE, color="darkslategray", linetype="dashed") +
  geom_smooth(aes(x=cortisol, y = shannon), data=curtis, method="lm", se = FALSE, color="black", linetype="dashed") +
  geom_point(data=curtis, aes(x=cortisol, y=faith), color='darkslategray') +                                     
  geom_point(data=curtis, aes(x=cortisol, y=shannon), color='black') 
ggp
ggsave("lmm/curtis.svg", plot=ggp)




# Dembe
# read in cortisol data
dembe <- read_tsv("lmm/metadata-dembe.tsv")
cortisol <- dembe$CortfGCMs
faith <- dembe$faith_pd
shannon <- dembe$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(dembe, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(dembe, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
dembe_fpd <- lm(faith ~ cortisol, data = dembe)
summary(dembe_fpd)

# lm, Shannon Entropy
dembe_shan <- lm(shannon ~ cortisol, data = dembe)
summary(dembe_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(dembe_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(dembe, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/dembe_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(dembe_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(dembe, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/dembe_shannon.svg", plot=ggp)


# Hadari
# read in cortisol data
hadari <- read_tsv("lmm/metadata-hadari.tsv")
cortisol <- hadari$CortfGCMs
faith <- hadari$faith_pd
shannon <- hadari$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(hadari, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(hadari, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
hadari_fpd <- lm(faith ~ cortisol, data = hadari)
summary(hadari_fpd)

# lm, Shannon Entropy
hadari_shan <- lm(shannon ~ cortisol, data = hadari)
summary(hadari_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(hadari_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(hadari, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/hadari_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(hadari_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(hadari, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/hadari_shannon.svg", plot=ggp)


# Jim
# read in cortisol data
jim <- read_tsv("lmm/metadata-jim.tsv")
cortisol <- jim$CortfGCMs
faith <- jim$faith_pd
shannon <- jim$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(jim, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(jim, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
jim_fpd <- lm(faith ~ cortisol, data = jim)
summary(jim_fpd)

# lm, Shannon Entropy
jim_shan <- lm(shannon ~ cortisol, data = jim)
summary(jim_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(jim_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(jim, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/jim_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(jim_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(jim, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/jim_shannon.svg", plot=ggp)

## Combined
ggp <- ggplot() +     
  geom_smooth(aes(x=cortisol, y = faith), data=jim, method="lm", se = FALSE, color="darkslategray", linetype="dashed") +
  geom_smooth(aes(x=cortisol, y = shannon), data=jim, method="lm", se = FALSE, color="black", linetype="dashed") +
  geom_point(data=jim, aes(x=cortisol, y=faith), color='darkslategray') +                                     
  geom_point(data=jim, aes(x=cortisol, y=shannon), color='black') 
ggp
ggsave("lmm/jim.svg", plot=ggp)




# Mosuba
# read in cortisol data
mosuba <- read_tsv("lmm/metadata-mosuba.tsv")
cortisol <- mosuba$CortfGCMs
faith <- mosuba$faith_pd
shannon <- mosuba$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(mosuba, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(mosuba, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
mosuba_fpd <- lm(faith ~ cortisol, data = mosuba)
summary(mosuba_fpd)

# lm, Shannon Entropy
mosuba_shan <- lm(shannon ~ cortisol, data = mosuba)
summary(mosuba_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(mosuba_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(mosuba, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/mosuba_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(mosuba_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(mosuba, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/mosuba_shannon.svg", plot=ggp)


# Patrick
# read in cortisol data
patrick <- read_tsv("lmm/metadata-patrick.tsv")
cortisol <- patrick$CortfGCMs
faith <- patrick$faith_pd
shannon <- patrick$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(patrick, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(patrick, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
patrick_fpd <- lm(faith ~ cortisol, data = patrick)
summary(patrick_fpd)

# lm, Shannon Entropy
patrick_shan <- lm(shannon ~ cortisol, data = patrick)
summary(patrick_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(patrick_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(patrick, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/patrick_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(patrick_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(patrick, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/patrick_faithpd.svg", plot=ggp)


# Asheboro
# read in cortisol data
asheboro <- read_tsv("lmm/metadata-asheboro.tsv")
cortisol <- asheboro$CortfGCMs
faith <- asheboro$faith_pd
shannon <- asheboro$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(asheboro, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(asheboro, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
asheboro_fpd <- lm(faith ~ cortisol, data = asheboro)
summary(asheboro_fpd)

# lm, Shannon Entropy
asheboro_shan <- lm(shannon ~ cortisol, data = asheboro)
summary(asheboro_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(asheboro_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(asheboro, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/asheboro_faithpd.svg", plot=ggp)



## Shannon
## get intercept and slope value
coeff<-coefficients(asheboro_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(asheboro, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/asheboro_shannon.svg", plot=ggp)

## Combined
ggp <- ggplot() +     
  geom_smooth(aes(x=cortisol, y = faith), data=asheboro, method="lm", se = FALSE, color="darkslategray", linetype="dashed") +
  geom_smooth(aes(x=cortisol, y = shannon), data=asheboro, method="lm", se = FALSE, color="black", linetype="dashed") +
  geom_point(data=asheboro, aes(x=cortisol, y=faith), color='darkslategray') +                                     
  geom_point(data=asheboro, aes(x=cortisol, y=shannon), color='black') 
ggp
ggsave("lmm/asheboro.svg", plot=ggp)





# Columbia
# read in cortisol data
columbia <- read_tsv("lmm/metadata-columbia.tsv")
cortisol <- columbia$CortfGCMs
faith <- columbia$faith_pd
shannon <- columbia$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(columbia, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(columbia, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
columbia_fpd <- lm(faith ~ cortisol, data = columbia)
summary(columbia_fpd)

# lm, Shannon Entropy
columbia_shan <- lm(shannon ~ cortisol, data = columbia)
summary(columbia_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(columbia_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(columbia, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/columbia_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(columbia_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(columbia, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/columbia_faithpd.svg", plot=ggp)

## Combined
ggp <- ggplot() +     
  geom_smooth(aes(x=cortisol, y = faith), data=columbia, method="lm", se = FALSE, color="darkslategray", linetype="dashed") +
  geom_smooth(aes(x=cortisol, y = shannon), data=columbia, method="lm", se = FALSE, color="black", linetype="dashed") +
  geom_point(data=columbia, aes(x=cortisol, y=faith), color='darkslategray') +                                     
  geom_point(data=columbia, aes(x=cortisol, y=shannon), color='black') 
ggp
ggsave("lmm/columbia.svg", plot=ggp)




# Denver
# read in cortisol data
denver <- read_tsv("lmm/metadata-denver.tsv")
cortisol <- denver$CortfGCMs
faith <- denver$faith_pd
shannon <- denver$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(denver, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(denver, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
denver_fpd <- lm(faith ~ cortisol, data = denver)
summary(denver_fpd)

# lm, Shannon Entropy
denver_shan <- lm(shannon ~ cortisol, data = denver)
summary(denver_shan)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(denver_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(denver, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/denver_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(denver_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(denver, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept, slope = slope, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/denver_shannon.svg", plot=ggp)

## Combined
ggp <- ggplot() +     
  geom_smooth(aes(x=cortisol, y = faith), data=denver, method="lm", se = FALSE, color="darkslategray", linetype="dashed") +
  geom_smooth(aes(x=cortisol, y = shannon), data=denver, method="lm", se = FALSE, color="black", linetype="dashed") +
  geom_point(data=denver, aes(x=cortisol, y=faith), color='darkslategray') +                                     
  geom_point(data=denver, aes(x=cortisol, y=shannon), color='black') 
ggp
ggsave("lmm/denver.svg", plot=ggp)



# All
# read in cortisol data
all <- read_tsv("lmm/metadata.tsv")
cortisol <- all$CortfGCMs
faith <- all$faith_pd
shannon <- all$shannon_entropy

# plot alpha diversity measures vs cortisol levels
## Faith PD
ggp <- ggplot(all, aes(cortisol, faith)) +           
  geom_point()
ggp

## Shannon
ggp <- ggplot(all, aes(cortisol, shannon)) +           
  geom_point()
ggp

# lm, Faith Phylogenetic Diversity
all_fpd <- lm(faith ~ cortisol, data = all)
summary(all_fpd)

# lm, Shannon Entropy
all_shan <- lm(shannon ~ cortisol, data = all)
summary(all_shan)

# lm, both
all_com <- lm(shannon*faith ~ cortisol, data = all)
summary(all_com)

# plot alpha diversity vs cortisol with regression line
## Faith PD
## get intercept and slope value
coeff<-coefficients(all_fpd)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(all, aes(cortisol, faith)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept_fpd, slope = slope_fpd, color="black", 
              linetype="dashed", size=1.5)
ggsave("lmm/all_faithpd.svg", plot=ggp)


## Shannon
## get intercept and slope value
coeff<-coefficients(all_shan)          
intercept<-coeff[1]
slope<- coeff[2]

ggp <- ggplot(all, aes(cortisol, shannon)) +           
  geom_point() +                                     
  geom_abline(intercept = intercept_shan, slope = slope_shan, color="black", 
              linetype="dashed", size=1.5)
ggp
ggsave("lmm/all_shannon.svg", plot=ggp)


## Combined
ggp <- ggplot() +     
  geom_smooth(aes(x=cortisol, y = faith), data=all, method="lm", se = FALSE, color="darkslategray", linetype="dashed") +
  geom_smooth(aes(x=cortisol, y = shannon), data=all, method="lm", se = FALSE, color="black", linetype="dashed") +
  geom_point(data=all, aes(x=cortisol, y=faith), color='darkslategray') +                                     
  geom_point(data=all, aes(x=cortisol, y=shannon), color='black') 
ggp
ggsave("lmm/all.svg", plot=ggp)

