/* To compile and execute, you just need to:
 * $ rustc sadadometro.rs
 * $ ./safadometro <day> <month> <year>
 */

use std::env;

fn main() {
  let mut args = env::args();
  args.next();
  let day = args.next().unwrap().parse().unwrap();
  let month = args.next().unwrap().parse().unwrap();
  let year = args.next().unwrap().parse().unwrap();

  let safadeza = calc_safadeza(day, month, year);
  let anjo = calc_anjo(safadeza);

  println!("Você é {0}% safado e {1}% anjo.", safadeza, anjo);
}

fn calc_safadeza(day: f32, month: i32, year: f32) -> f32 {
  let mut m = 0;
  for i in 1..month+1 { m += i; }

  return m as f32 + (year / 100.00) * (50.00 - day);
}

fn calc_anjo(safadeza: f32) -> f32 {
  return 100.00 - safadeza;
}

