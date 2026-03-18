# include<iostream>
using namespace std;

int main(){
    int a, b;
    cin >> a >> b;

    int integer = a/b;
    int rem = a%b;
    float real = (float)a/b;

    cout << integer << " " << rem << " " << real << endl;

    return 0;   
}