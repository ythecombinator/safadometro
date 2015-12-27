fun WesleySafadao(day: Int, month: Int, year: Int) {

  val safado = month.downTo(1).sum() + (year/100f) * (50 - day)
  val anjo = 100 - safado

  println("Você é %.2f%% safado e %.2f%% anjo".format(safado, anjo))
}
