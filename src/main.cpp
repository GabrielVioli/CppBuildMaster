#include <iostream>
#include "dec_func.h"
#include <string>

using namespace std; 

int main() {
    int op1;
    int op2;

    
    int op3;
    cout<<"type: ";
    cin>>op1;
    cout<<"type: ";
    cin>>op2;
    cout<<"soma: "<<soma(op1, op2)<<endl;
    cout<<"multiplicacao: "<<mult(op1, op2)<<endl;

    cout<<"type a number: "; cin>>op3;
    tab(op3);
    
    return 0;
}