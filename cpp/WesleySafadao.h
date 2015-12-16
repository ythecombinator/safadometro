#ifndef SAFADAO_WESLLEYSAFADAO_H
#define SAFADAO_WESLLEYSAFADAO_H

int sum(int month) {
    int sum = 0;

    while(month > 0) {
        sum += month;
        month--;
    }

    return sum;
}

int getSafadeza(int month, int day, int year) {
    return sum(month) + ((year / 100) * (50 - day));
}

int getAnjo(int safadeza) {
    return 100 - safadeza;
}

#endif //SAFADAO_WESLLEYSAFADAO_H
