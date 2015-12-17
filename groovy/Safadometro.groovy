import java.util.stream.IntStream

class WesleySafadao {
  private Integer day, month, year

  WesleySafadao(Integer day, Integer month, Integer year) {
    this.day = day
    this.month = month
    this.year = year  
  }

  def safadeza() {
    def sum = IntStream.rangeClosed(1, month).sum()
    sum + (year / 100) * (50 - day)
  }

  def anjo() {
    100 - safadeza()  
  }

  def say_safadeza() {
    println "Você é ${safadeza()}% safado e ${anjo()}% anjo."  
  }
}
