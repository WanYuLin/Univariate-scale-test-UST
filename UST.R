
# Author: Wan-Yu Lin, Professor, Institute of Health Data Analytics and Statistics, National Taiwan University


UST1 <- function(Trait, Covariate, SNP){
    INT <- function(x) qnorm((rank(x, na.last = "keep") - 0.5) / sum(!is.na(x)))    
    regQTL   <- summary(lm(INT(Trait) ~ SNP + as.matrix(Covariate), na.action = na.exclude))$coef
    reg   <- lm(INT(Trait) ~ as.factor(SNP) + as.matrix(Covariate), na.action = na.exclude)
    Myresiduals <- residuals(reg)              
    dis <- (Myresiduals-median(Myresiduals,na.rm=T))^2
    vQTLp <- unlist(summary(aov(dis ~ as.factor(SNP))))["Pr(>F)1"]
    return(append(regQTL[rownames(regQTL)=="SNP",], vQTLp))
}
                                 
UST <- function(Trait, Covariate, SNP){result <- apply(SNP, 2, function(x){UST1(Trait, Covariate, x)}); rownames(result) <- c("Beta", "SE", "t-stat", "QTLp", "vQTLp"); return(result)}


