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
