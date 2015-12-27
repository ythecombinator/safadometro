<?php

function wesley_safadao($day, $month, $year) {
  $safadeza = array_sum(range(1, $month)) + ($year / 100) * (50 - $day);
  $anjo = 100 - $safadeza;
  echo "Você é {$safadeza}% safado e {$anjo}% anjo";
}
