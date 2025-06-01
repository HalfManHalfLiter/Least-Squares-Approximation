format long
clc

%wprowadzenie danych
x1 = 0.03;
x2 = 0.19;
x3 = 0.25;
x4 = 0.40;
x5 = 0.44;
x6 = 0.52;
x7 = 0.69;
x8 = 0.78;
x9 = 0.87;
y1 = 2.87;
y2 = 2.44;
y3 = 2.25;
y4 = 1.82;
y5 = 1.68;
y6 = 1.44;
y7 = 0.980;
y8 = 0.630;
y9 = 0.43;

%obliczanie s i t
s0 = x1^0 + x2^0 + x3^0 + x4^0 + x5^0 + x6^0 + x7^0 + x8^0 + x9^0;
s1 = x1^1 + x2^1 + x3^1 + x4^1 + x5^1 + x6^1 + x7^1 + x8^1 + x9^1;
s2 = x1^2 + x2^2 + x3^2 + x4^2 + x5^2 + x6^2 + x7^2 + x8^2 + x9^2;
t0 = x1^0*y1 + x2^0*y2 + x3^0*y3 + x4^0*y4 + x5^0*y5 + x6^0*y6 + x7^0*y7 + x8^0*y8 + x9^0*y9;
t1 = x1^1*y1 + x2^1*y2 + x3^1*y3 + x4^1*y4 + x5^1*y5 + x6^1*y6 + x7^1*y7 + x8^1*y8 + x9^1*y9;
disp(['s0 = ', num2str(s0)])
disp(['s1 = ', num2str(s1)])
disp(['s2 = ', num2str(s2)])
disp(['t0 = ', num2str(t0)])
disp(['t1 = ', num2str(t1)])

%obliczanie c0 i c1
syms x y
eqn1 = s0*x + s1*y == t0;
eqn2 = s1*x + s2*y == t1;
sol = solve([eqn1, eqn2], [x, y]);
xSol = sol.x;
ySol = sol.y;
c0 = double(xSol);
c1 = double(ySol);
disp(['c0 = ', num2str(c0)])
disp(['c1 = ', num2str(c1)])

%aproksymacja
aproksymacja = num2str(c1)*x + num2str(c0);
disp(['aproksymacja = ', num2str(c1), '*x + ', num2str(c0)])

%różnice
aproks1 = c1*x1 + c0;
aproks2 = c1*x2 + c0;
aproks3 = c1*x3 + c0;
aproks4 = c1*x4 + c0;
aproks5 = c1*x5 + c0;
aproks6 = c1*x6 + c0;
aproks7 = c1*x7 + c0;
aproks8 = c1*x8 + c0;
aproks9 = c1*x9 + c0;
roznica1 = abs(aproks1 - y1);
roznica2 = abs(aproks2 - y2);
roznica3 = abs(aproks3 - y3);
roznica4 = abs(aproks4 - y4);
roznica5 = abs(aproks5 - y5);
roznica6 = abs(aproks6 - y6);
roznica7 = abs(aproks7 - y7);
roznica8 = abs(aproks8 - y8);
roznica9 = abs(aproks9 - y9);
disp(['Różnica y1 = ', num2str(roznica1)])
disp(['Różnica y2 = ', num2str(roznica2)])
disp(['Różnica y3 = ', num2str(roznica3)])
disp(['Różnica y4 = ', num2str(roznica4)])
disp(['Różnica y5 = ', num2str(roznica5)])
disp(['Różnica y6 = ', num2str(roznica6)])
disp(['Różnica y7 = ', num2str(roznica7)])
disp(['Różnica y8 = ', num2str(roznica8)])
disp(['Różnica y9 = ', num2str(roznica9)])

%błąd średniokwadratowy aproksymacji
blad1 = ((roznica1)^2)/9;
blad2 = ((roznica2)^2)/9;
blad3 = ((roznica3)^2)/9;
blad4 = ((roznica4)^2)/9;
blad5 = ((roznica5)^2)/9;
blad6 = ((roznica6)^2)/9;
blad7 = ((roznica7)^2)/9;
blad8 = ((roznica8)^2)/9;
blad9 = ((roznica9)^2)/9;
disp(['Błąd średniokwadratowy 1 = ', num2str(blad1)])
disp(['Błąd średniokwadratowy 2 = ', num2str(blad2)])
disp(['Błąd średniokwadratowy 3 = ', num2str(blad3)])
disp(['Błąd średniokwadratowy 4 = ', num2str(blad4)])
disp(['Błąd średniokwadratowy 5 = ', num2str(blad5)])
disp(['Błąd średniokwadratowy 6 = ', num2str(blad6)])
disp(['Błąd średniokwadratowy 7 = ', num2str(blad7)])
disp(['Błąd średniokwadratowy 8 = ', num2str(blad8)])
disp(['Błąd średniokwadratowy 9 = ', num2str(blad9)])