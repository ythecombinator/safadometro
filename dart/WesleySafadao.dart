String wesleySafadao(int day, int month, int year){
  int mySum = 0;
  
  while(month > 0){
    mySum = mySum + month;
    month--;
  }
  
  double safadeza = mySum + (year / 100) * (50 - day);
  double anjo = 100 - safadeza;
  
  return "Você é " + safadeza.toString() + "% safado e " + anjo.toString() + "% anjo";
}
