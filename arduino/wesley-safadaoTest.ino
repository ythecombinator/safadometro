float safadeza, anjo;

void setup(){
  Serial.begin(9600);
}

void loop(){
  safadeza = getSafadeza(02, 26, 96);
  anjo = getAnjo(safadeza);
  printSafadeza(safadeza, anjo);
  while(1);
}

int sum(int month) {
    int sum = 0;
    while(month > 0) {
        sum += month;
        month--;
    }
    return sum;
}

float getSafadeza(int month, int day, int year) {
    return sum(month) + ((year / 100.0) * (50.0 - day));
}

float getAnjo(float safadeza) {
    return 100.0 - safadeza;
}

void printSafadeza(float safadeza, float anjo) {    
  Serial.print("Você é ");
  Serial.print(safadeza);
  Serial.print("% safado e ");
  Serial.print(anjo);
  Serial.println("% anjo");
}