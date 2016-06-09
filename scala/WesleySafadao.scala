case class Safadao(day: Int, month: Int, year: Int) {
  def saySafadeza() = {
    val saf  = (1 to month + 1).sum  + (year / 100.0) * (50 - day)
    val anjo = 100 - saf
    println(s"Você é $saf% safado e $anjo% anjo")
  }
}
