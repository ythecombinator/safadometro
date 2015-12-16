package safadometro

import (
  "fmt"
  "testing"
)

func TestSafadometro(t *testing.T) {
  day, month, year := 30, 10, 94
  safadeza, anjo := WesleySafadao(day, month, year)
  fmt.Printf("Voce é %.2f%% safado e %.2f%% anjo\n", safadeza, anjo)
}