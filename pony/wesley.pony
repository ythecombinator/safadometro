primitive BasicMath
  fun sum(x: F32): F32 =>
    var count: F32 = 1
    var sumValue: F32 = 0

    while count <= x do
      sumValue = sumValue + count
      count = count + 1
    end
    
    sumValue

primitive Wesley
  fun safadeza(day: F32, month: F32, year: F32): F32 =>
    let m = BasicMath.sum(month)
    let y = year / 100
    let d = 50 - day
    
    m + (y * d)
    
  fun angel(safadezaPercent: F32): F32 =>
    100 - safadezaPercent
  
  fun formatMessage(safadaoPercent: F32, angelPercent: F32): String =>
    "Você é " + safadaoPercent.string() + "% safado e " + angelPercent.string() + "% anjo"

