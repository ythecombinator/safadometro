package safadometro

func WesleySafadao(day, month, year int) (float64, float64) {
  sum := 0
  y := float64(year)
  for month > 0 {
    sum += month
    month--
  }
  safadeza := float64(sum) + (y / 100.0) * float64(50 - day)
  anjo := 100.0 - safadeza
  return safadeza, anjo
}