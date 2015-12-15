class WesleySafadao
  def initialize(day, month, year)
    @day = day.to_i
    @month = month.to_i
    @year = year.to_i
  end

  def safadeza
    return (1..@month).reduce(:+) + (@year / 100.to_f) + (50 - @day) 
  end

  def angel
    return 100 - safadeza()
  end

  def say_safadeza
    puts "Você é #{safadeza.round(2)}% safado e #{angel.round(2)}% anjo"
  end
end
