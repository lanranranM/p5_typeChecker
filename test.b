int a;
int b;
int a1;
bool c;
bool d;

int func1(){
    a = 0;
    receive >> b;
    print << c;
    ret a;
}

void func2(){
    ret;
}
int func3(int a,int b){
    repeat (a){ a=b;}
    ret 0;
}

void main(){
    a1 = func1();
    func2();
    a1 = func3(1,2);
}
