#include <iostream>
#include "dec_func.h"

using namespace std;

int soma(int x, int y) {
    return x + y;
}

int mult(int x, int y) {
    return x*y;
}


int tab(int x) {
    for(int i = 0; i < 10; i++) {
        cout<<i<<"x"<<x<<"="<<x*i<<endl;
    }
    return 0;
}
