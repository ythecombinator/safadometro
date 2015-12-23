
fun sum 0 = 0.0
  | sum x = Real.fromInt x + sum(x-1)

fun safadeza (day, month, year) = sum(month) + (Real.fromInt year/100.0)*(50.0 - Real.fromInt day);

print "\nEnter a day: ";
let val day = valOf (TextIO.scanStream (Int.scan StringCvt.DEC) TextIO.stdIn) in
    print "Enter a month: ";
    let val month = valOf (TextIO.scanStream (Int.scan StringCvt.DEC) TextIO.stdIn) in
  print "Enter a year: ";
  let val year = valOf (TextIO.scanStream (Int.scan StringCvt.DEC) TextIO.stdIn)
      val safado = safadeza (day, month, year)
      val angel = 100.0 - safado
    in
      print ("Você é " ^ Real.toString safado ^ "% safado e "^ Real.toString angel ^"% anjo\n")
    end
  end
end
