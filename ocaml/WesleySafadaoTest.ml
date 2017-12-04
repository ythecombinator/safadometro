#use "WesleySafadao.ml";;

let main = 
    let (year, month, day) = (28, 12, 81) in
        print_string "Você é ";
        print_int ( getPercentualSafadeza (day, month, year) ) ;
        print_string "% safado e ";
        print_int ( getPercentualAnjo (day, month, year) );
        print_endline "% anjo"
    
let _ = main
