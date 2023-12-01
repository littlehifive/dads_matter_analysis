# compute Alpha and Omega

get_rel <- function(model, data){
  
  # Omega
  omega <- semTools::compRelSEM(model)
  
  # Interpreting Omega
  omega_interpretation <- ifelse(omega < 0.6, "Poor",
                                      ifelse(omega < 0.8, "Acceptable",
                                              ifelse(omega < 0.9, "Good", "Excellent")))
  
  # Alpha
  alpha <- psych::alpha(data, check.keys = TRUE)$total$raw_alpha
  
  # Interpreting Alpha
  alpha_interpretation <- ifelse(alpha < 0.6, "Poor",
                                      ifelse(alpha < 0.8, "Acceptable",
                                              ifelse(alpha < 0.9, "Good", "Excellent")))
  
  return(paste0(
    "Cronbach's Alpha is ", round(alpha, 3), ", which is ", alpha_interpretation, "; ",
    "McDonald's Omega is ", round(omega, 3), ", which is ", omega_interpretation, "."
  ))
}

# get factor score from lavaan model and merge it to original data
get_fscore <- function(fit, varname, data){
  
  pred <- lavaan::lavPredict(fit)
  index <- lavaan::inspect(fit, "case.idx")
  
  data[index, varname] <- pred[,1]
  
  return(data)
}

# function to get correlation
# correlation matrix with significance stars
corstarsl <- function(x){ 
  x <- as.matrix(x) 
  R <- Hmisc::rcorr(x)$r 
  p <- Hmisc::rcorr(x)$P 
  ## define notions for significance levels; spacing is important.
  mystars <- ifelse(p < .001, "***", ifelse(p < .01, "**", ifelse(p < .05, "*", "")))
  ## trunctuate the matrix that holds the correlations to two decimal
  R <- format(round(cbind(rep(-1.11, ncol(x)), R), 3))[,-1] 
  ## build a new matrix that includes the correlations with their apropriate stars 
  Rnew <- matrix(paste(R, mystars, sep=""), ncol=ncol(x)) 
  diag(Rnew) <- paste(diag(R), " ", sep="") 
  rownames(Rnew) <- colnames(x) 
  colnames(Rnew) <- paste(colnames(x), "", sep="") 
  ## remove upper triangle
  Rnew <- as.matrix(Rnew)
  Rnew[upper.tri(Rnew, diag = TRUE)] <- "--"
  Rnew[upper.tri(Rnew)] <- ""
  Rnew <- as.data.frame(Rnew) 
  ## remove last column and return the matrix (which is now a data frame)
  Rnew <- cbind(Rnew[1:length(Rnew)])
  return(Rnew) 
}
