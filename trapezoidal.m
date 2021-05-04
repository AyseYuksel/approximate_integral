%for example 
%trapezoidal('x.^2',0,1)
%ans = 0.5000

%the actual value of the integral of the function
%octave:12> syms x
%octave:13> int(x^2,0,1)
%ans = (sym) 1/3
%octave:14> eval(ans)
%ans = 0.3333

%actual value -> 0.3333
%approximate value ->0.5000

function y=trapezoidal(f,a,b)

str1='@(x)';
str2=f;
str=[str1 str2];
ff=str2func(str);

y=(ff(a)+ff(b))/2;