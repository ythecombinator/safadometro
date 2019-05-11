let getPercentualSafadeza (day, month, year) = 
    (1+month)*month/2 + (year/100) * (50 - day)

let getPercentualAnjo (day, month, year) = 
    100 - getPercentualSafadeza (day, month, year)
