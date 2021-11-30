int a;
bool b;

struct S { int a; }
struct T { bool b; }
int g() { ret 1; }
bool f(int a, bool b) { ret fls; }
void v() { ret; }

void basicTypes() {
    struct S s;

    a = 1;
    b = fls;
    s.a = a;
    a = g();
    v();
    print << "Hello World!\n";

    if (tru) {
        a = 1;
        b = fls;
        s.a = a;
        a = g();
        v();
        print << "Hello World!\n";
    } else {
        a = 1;
        b = fls;
        s.a = a;
        a = g();
        v();
        print << "Hello World!\n";
    }
    while(tru) {
        a = 1;
        b = fls;
        s.a = a;
        a = g();
        v();
        print << "Hello World!\n";
    }
    repeat(1) {
        a = 1;
        b = fls;
        s.a = a;
        a = g();
        v();
        print << "Hello World!\n";
    }
}

void validOperations() {
    bool result;
    struct S s;
    struct S s2;

    result = !tru;
    result = !fls;
    result = !result;
    result = result && result;
    result = result && fls;
    result = tru || fls;
    result = tru || result;
    result = (a==1) || (a*10 != 100);

    a = 1+1;
    a = a+1;
    a = 1-1;
    a = 1*10;
    a = 1/10;
    a = 11/a;
    a = -a;
    a = 11-(-a)*a;

    result = a < 10;
    result = a > 10;
    result = a <= 10;
    result = a >= 10;
    result = s.a==s2.a;
    result = b!=fls;
}

void logical() {
    bool result;
    result = result && b;
    result = result && (b || b);
    if (tru && fls) {}
    while (tru) {}
}

void repeatLoop() {
    repeat(10) {}
    repeat(a*a) {}
}

void arithmeticAndRelational() {
    int a;
    int b;
    bool result;

    a = a+b;
    a = a-b;
    a = a*b;
    a = a/b;
    a = -a;

    result = a>b;
    result = a<b;
    result = a>=b;
    result = a<=b;
}

void equalityOperators() {
    int a;
    bool b;
    bool result;

    result = a==a;
    result = a!=a;
    result = b==b;
    result = b!=b;
    result = "asdf"=="asdf";
    result = "asdf"!="asdf";
}

void assignmentOperators() {
    int a;
    bool b;
    a = a+1;
    b = b&&b;
    a = a=1;
    b = b=fls;
}

void printAndReceive() {
    struct S s;
    struct T t;

    print << a;
    print << b;
    print << "Hi";
    print << s.a;
    print << t.b;

    receive >> a;
    receive >> b;
    receive >> s.a;
    receive >> t.b;
}

void fnCalls() {
    bool result;

    f(1, fls);
    result = f(a, b);

    a = g();
}
