module AsPorteirasDoSafadao 

let rec sum x = function
  | [] -> x
  | hd :: nl -> sum (hd + x) nl

let wsCalculos day month year = 
  let _naughty = (sum 0 [1..month] |> double) + ((year|>double) / 100.0) * (50.0 - (day|>double))
  let _angel = 100.0 - _naughty
  
  _naughty, _naughty

let safadeza tuple =
  let (x,y) = tuple
  sprintf "Você eh %.2f%% anjo, mas tem aquele %.2f%% de vagabundo!" x y
