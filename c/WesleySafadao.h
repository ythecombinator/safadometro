float * getCalc(int day, int month, int year){
  float    y =  (float)year;
  float    s;
  static   float xa[2];
  unsigned x, tot = 0;

  for (x = 0; x < month + 1; x++)
    tot = tot + x;

  s = tot + ((y / 100) * (50 - day));
  
  xa[0] = s;
  xa[1] = 100 - s;

  return xa;
}


