'use strict';

let safadeza = (day, month, year) => {
  const sum = Array.apply(null, {
    length: month
  }).map((_, i) => i + 1).reduce((x, y) => x + y);
  return sum + ((year % 100) / 100) * (50 - day);
};

let angel = (day, month, year) => 100 - safadeza(day, month, year);

export angel;
export safadeza;
