class Safadao(){
  def getCalc(day : Int, month : Int, year : Int){
    var nY   = year : Float
    var saf  = List.range(1, month + 1).sum  + ((nY / 100) * (50 - day))
    def anjo = 100 - saf

    println("Você é " + saf + "% safado e " + anjo + "% anjo")
  }
}
