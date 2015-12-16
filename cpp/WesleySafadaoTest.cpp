// Oh yeah... I heard the song! ;)

#include <iostream>
#include <iomanip>
#include "WesleySafadao.h"

using namespace std;

int main() {

    int day = 28, month = 12, year = 81;

    int safadeza = getSafadeza(month, day, year);
    int anjo = getAnjo(safadeza);

    cout << "Você é " << safadeza << "% safado e " << anjo << "% anjo" << endl;

    return 0;
}
