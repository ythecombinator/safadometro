wesley_safadao <- function(day, month, year){
  safadeza <- (sum(seq(1, month)) + (year / 100) * (50 - day))
  anjo <- 100 - safadeza
  return(c(safadeza, anjo))
}

say_safadeza <- function(day, month, year){
  grau_de_safadeza <- data.frame(safadeza=NA, anjo=NA)
  grau_de_safadeza[c('safadeza', 'anjo')] <- wesley_safadao(day, month, year)
  sprintf("%.2f%% safado e %.2f%% anjo", grau_de_safadeza$safadeza, grau_de_safadeza$anjo)
}
