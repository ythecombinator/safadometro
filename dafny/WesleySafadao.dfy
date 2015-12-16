// Jocelino Alves < netojocelino.github.io >
// for test, use that site: http://rise4fun.com/dafny and paste the code or http://rise4fun.com/Dafny/K6dY
method safado(dia: real, mes: real, ano: real) returns (res: real){
  var i := 0.0;
  var k := mes;
  while (k > 0.0){
    i := i + k;
    k := k - 1.0;
  }
  res := i + (ano / 100.0) * (50.0 - dia);
  return res;
}

method anjo(safadeza: real) returns (res: real){
  res := 100.0 - safadeza;
  return res; 
}

method Main(){
  var saf := safado(15.0, 9.0, 1996.0); // date in float
  var anj := anjo(saf);
  print "You are";
  print saf;
  print "% naughty and ";
  print anj;
  print "% angelical";
}
