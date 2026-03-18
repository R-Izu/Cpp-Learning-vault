# include<iostream>
using namespace std;

int main(){
    int A, B;   // 整数A, Bの宣言
    cin >> A >> B;  // A, Bの入力

    //キャスト演算子でA,Bを小数にして割った値numを求める
    double num = static_cast<double>(A)/static_cast<double>(B);

    if(num>1.5){
        cout << "Greater\n";
    }
    else{
        cout << "Less or Equal\n";
    }

    return 0;
}