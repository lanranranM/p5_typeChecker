bool bbb;
struct S { int a; }
struct T { bool b; }
struct S t;

void f(int p1, bool p2) {
}

int g() {
}

void main() {
    int aaa;

    /// some errors involving illegal operations on functions
    aaa = f + f;
    bbb = f == 3;
    bbb = f > main;
    bbb = f == f;

    /// some errors involving bad function calls 
    aaa();
    f();
    f(5);
    f(aaa, aaa);
    f(t, t.a);
    S();

    /// some errors involving structs 
    t = 5;
    t = t;
    receive >> S;
    t = tru || 3;
    bbb = S && t.a;

    /// error involving return
    ret 10;

    /// other type errors 
    aaa = aaa + (!fls);
    aaa = aaa + "foo";
    bbb = aaa;

    /// don't give too many or too few error messages here 
    bbb = (aaa + tru) && (bbb < tru);
}

void writingErrorCheck() {
    /// function
    print << f;
    /// struct name
    print << S;
    /// struct variable
    print << t;
    /// void value
    print << f();

    if (tru) {
        print << f;
        print << S;
        print << t;
        print << f();
    } else {
        print << f;
        print << S;
        print << t;
        print << f();
    }
    while(tru) {
        print << f;
        print << S;
        print << t;
        print << f();
    }
    repeat(1) {
        print << f;
        print << S;
        print << t;
        print << f();
    }
}

void readingErrorCheck() {
    /// function
    receive >> f;
    /// struct name
    receive >> S;
    /// struct variable
    receive >> t;

    if (tru) {
        receive >> f;
        receive >> S;
        receive >> t;
    } else {
        receive >> f;
        receive >> S;
        receive >> t;
    }
    while(tru) {
        receive >> f;
        receive >> S;
        receive >> t;
    }
    repeat(1) {
        receive >> f;
        receive >> S;
        receive >> t;
    }
}

void callingErrorCheck() {
    int a;
    bool b;

    /// calling non-fn
    a();
    t();

    /// calling fn with wrong no. args
    f(a);
    f(a, bbb, a);
    f();

    /// calling fn with wrong arg type
    f(a, a);
    f(bbb, a);
    f(b, a);

    /// callling fn with wrong no. args and wrong arg type
    f(b);
    f(a, a, b);
    f(b, a, b);

    if (tru) {
        a();
        t();
        f(a);
        f(a, bbb, a);
        f();
        f(a, a);
        f(bbb, a);
        f(b, a);
        f(b);
        f(a, a, b);
        f(b, a, b);
    } else {
        a();
        t();
        f(a);
        f(a, bbb, a);
        f();
        f(a, a);
        f(bbb, a);
        f(b, a);
        f(b);
        f(a, a, b);
        f(b, a, b);
    }
    while(tru) {
        a();
        t();
        f(a);
        f(a, bbb, a);
        f();
        f(a, a);
        f(bbb, a);
        f(b, a);
        f(b);
        f(a, a, b);
        f(b, a, b);
    }
    repeat(1) {
        a();
        t();
        f(a);
        f(a, bbb, a);
        f();
        f(a, a);
        f(bbb, a);
        f(b, a);
        f(b);
        f(a, a, b);
        f(b, a, b);
    }
}

int voidRetErrorCheck() {
    ret;

    if (tru) {
        ret;
    } else {
        ret;
    }
    while(tru) {
        ret;
    }
    repeat(1) {
        ret;
    }
}

void voidFnRetErrorCheck() {
    int a;

    ret 10;
    ret a;

    if (tru) {
        ret 10;
        ret a;
    } else {
        ret 10;
        ret a;
    }
    while(tru) {
        ret 10;
        ret a;
    }
    repeat(1) {
        ret 10;
        ret a;
    }
}

int wrongTypeRetErrorCheck() {
    bool b;
    ret b;
    ret "asdf";
    ret fls;
    ret wrongTypeRetErrorCheck;
    ret S;
    ret t;

    if (tru) {
        ret b;
    } else {
        ret b;
    }
    while(tru) {
        ret b;
    }
    repeat(1) {
        ret b;
    }
}

void arithmeticOperatorErrorCheck() {
    int a;
    bool b;
    int result;

    ++b;
    --b;

    result = a + b;
    result = a - b;
    result = a * b;
    result = a / b;
    result = a = 10;

    result = b + a;
    result = (a==0) + a;
    result = b + b;
    if ((a==1)+a) { print << a; }

    if (tru) {
        ++b;
        --b;
        result = a + b;
        result = a - b;
        result = a * b;
        result = a / b;
        result = a = 10;
        result = b + a;
        result = (a==0) + a;
        result = b + b;
        if ((a==1)+a) { print << a; }
    } else {
        ++b;
        --b;
        result = a + b;
        result = a - b;
        result = a * b;
        result = a / b;
        result = a = 10;
        result = b + a;
        result = (a==0) + a;
        result = b + b;
        if ((a==1)+a) { print << a; }
    }
    while(tru) {
        ++b;
        --b;
        result = a + b;
        result = a - b;
        result = a * b;
        result = a / b;
        result = a = 10;
        result = b + a;
        result = (a==0) + a;
        result = b + b;
        if ((a==1)+a) { print << a; }
    }
    repeat(1) {
        ++b;
        --b;
        result = a + b;
        result = a - b;
        result = a * b;
        result = a / b;
        result = a = 10;
        result = b + a;
        result = (a==0) + a;
        result = b + b;
        if ((a==1)+a) { print << a; }
    }
}

void relationalOperatorErrorCheck() {
    int a;
    bool b;

    b = b < 0;
    b = b > 0;
    b = b <= 0;
    b = b >= 0;

    b = (a==1) < 0;
    repeat (b>b) { print << a; }

    if (tru) {
        b = b < 0;
        b = b > 0;
        b = b <= 0;
        b = b >= 0;
        b = (a==1) < 0;
        repeat (b>b) { print << a; }
    } else {
        b = b < 0;
        b = b > 0;
        b = b <= 0;
        b = b >= 0;
        b = (a==1) < 0;
        repeat (b>b) { print << a; }
    }
    while(tru) {
        b = b < 0;
        b = b > 0;
        b = b <= 0;
        b = b >= 0;
        b = (a==1) < 0;
        repeat (b>b) { print << a; }
    }
    repeat(1) {
        b = b < 0;
        b = b > 0;
        b = b <= 0;
        b = b >= 0;
        b = (a==1) < 0;
        repeat (b>b) { print << a; }
    }
}

void logicalOperatorErrorCheck() {
    int a;
    bool b;

    b = !a;
    b = a && b;
    b = a || b;

    b = !(a+1);
    b = (a==1) && a;
    b = a && a;

    if (tru) {
        b = !a;
        b = a && b;
        b = a || b;
        b = !(a+1);
        b = (a==1) && a;
        b = a && a;
    } else {
        b = !a;
        b = a && b;
        b = a || b;
        b = !(a+1);
        b = (a==1) && a;
        b = a && a;
    }
    while(tru) {
        b = !a;
        b = a && b;
        b = a || b;
        b = !(a+1);
        b = (a==1) && a;
        b = a && a;
    }
    repeat(1) {
        b = !a;
        b = a && b;
        b = a || b;
        b = !(a+1);
        b = (a==1) && a;
        b = a && a;
    }
}

void controlFlowErrorCheck() {
    int a;
    bool b;
    int c;

    if (a) { print << a; }
    if (a+1) { print << a; }
    while (a) { print << a; }
    while (c*2) { print << a; }
    repeat (b) { print << a; }
    repeat (b==b) { print << a; }

    if (tru) {
        if (a) { print << a; }
        if (a+1) { print << a; }
        while (a) { print << a; }
        while (c*2) { print << a; }
        repeat (b) { print << a; }
        repeat (b==b) { print << a; }
    } else {
        if (a) { print << a; }
        if (a+1) { print << a; }
        while (a) { print << a; }
        while (c*2) { print << a; }
        repeat (b) { print << a; }
        repeat (b==b) { print << a; }
    }
    while(tru) {
        if (a) { print << a; }
        if (a+1) { print << a; }
        while (a) { print << a; }
        while (c*2) { print << a; }
        repeat (b) { print << a; }
        repeat (b==b) { print << a; }
    }
    repeat(1) {
        if (a) { print << a; }
        if (a+1) { print << a; }
        while (a) { print << a; }
        while (c*2) { print << a; }
        repeat (b) { print << a; }
        repeat (b==b) { print << a; }
    }
}

void equalErrorCheck() {
    int a;
    bool b;
    struct S s;
    bool result;

    print << a==b;
    result = s == a;
    result = s != a;
    result = a == b;
    result = s == b;
    result = (a>1) == f(a, b);
    result = (a>1) != f(a, b);

    result = f(a, b) == f(a, b);

    result = f==f;
    result = f!=f;

    result = S==S;
    result = S!=T;

    result = s==t;
    result = s!=t;

    if (tru) {
        print << a==b;
        result = s == a;
        result = s != a;
        result = a == b;
        result = s == b;
        result = (a>1) == f(a, b);
        result = (a>1) != f(a, b);
        result = f(a, b) == f(a, b);
        result = f==f;
        result = f!=f;
        result = S==S;
        result = S!=T;
        result = s==t;
        result = s!=t;
    } else {
        print << a==b;
        result = s == a;
        result = s != a;
        result = a == b;
        result = s == b;
        result = (a>1) == f(a, b);
        result = (a>1) != f(a, b);
        result = f(a, b) == f(a, b);
        result = f==f;
        result = f!=f;
        result = S==S;
        result = S!=T;
        result = s==t;
        result = s!=t;
    }
    while(tru) {
        print << a==b;
        result = s == a;
        result = s != a;
        result = a == b;
        result = s == b;
        result = (a>1) == f(a, b);
        result = (a>1) != f(a, b);
        result = f(a, b) == f(a, b);
        result = f==f;
        result = f!=f;
        result = S==S;
        result = S!=T;
        result = s==t;
        result = s!=t;
    }
    repeat(1) {
        print << a==b;
        result = s == a;
        result = s != a;
        result = a == b;
        result = s == b;
        result = (a>1) == f(a, b);
        result = (a>1) != f(a, b);
        result = f(a, b) == f(a, b);
        result = f==f;
        result = f!=f;
        result = S==S;
        result = S!=T;
        result = s==t;
        result = s!=t;
    }
}

void assignErrorCheck() {
    struct T t2;
    struct S s;

    assignErrorCheck = f;
    f = g;

    S = T;

    t2 = s;
    t2 = t;
    s = t;

    if (tru) {
        assignErrorCheck = f;
        f = g;
        S = T;
        t2 = s;
        t2 = t;
        s = t;
    } else {
        assignErrorCheck = f;
        f = g;
        S = T;
        t2 = s;
        t2 = t;
        s = t;
    }
    while(tru) {
        assignErrorCheck = f;
        f = g;
        S = T;
        t2 = s;
        t2 = t;
        s = t;
    }
    repeat(1) {
        assignErrorCheck = f;
        f = g;
        S = T;
        t2 = s;
        t2 = t;
        s = t;
    }
}

void cascadingErrorCheck() {
    int a;
    bool b;

    print << (tru + 3) * 4;
    b = tru && (fls || 3);
    f("a"*4, b);
    print << 1 + f(a, b);
    b = (tru + 3) == b;

    if (tru) {
        print << (tru + 3) * 4;
        b = tru && (fls || 3);
        f("a"*4, b);
        print << 1 + f(a, b);
        b = (tru + 3) == b;
    } else {
        print << (tru + 3) * 4;
        b = tru && (fls || 3);
        f("a"*4, b);
        print << 1 + f(a, b);
        b = (tru + 3) == b;
    }
    while(tru) {
        print << (tru + 3) * 4;
        b = tru && (fls || 3);
        f("a"*4, b);
        print << 1 + f(a, b);
        b = (tru + 3) == b;
    }
    repeat(1) {
        print << (tru + 3) * 4;
        b = tru && (fls || 3);
        f("a"*4, b);
        print << 1 + f(a, b);
        b = (tru + 3) == b;
    }
}

void doubleErrorCheck() {
    int a;
    bool b;

    print << tru + "hello";
    print << 1 + f(tru);
    print << fls + g(1, 2);
    ret 3+tru;

    if (tru) {
        print << tru + "hello";
        print << 1 + f(tru);
        print << fls + g(1, 2);
        ret 3+tru;
    } else {
        print << tru + "hello";
        print << 1 + f(tru);
        print << fls + g(1, 2);
        ret 3+tru;
    }
    while(tru) {
        print << tru + "hello";
        print << 1 + f(tru);
        print << fls + g(1, 2);
        ret 3+tru;
    }
    repeat(1) {
        print << tru + "hello";
        print << 1 + f(tru);
        print << fls + g(1, 2);
        ret 3+tru;
    }
}
