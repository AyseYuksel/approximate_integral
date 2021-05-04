%for example
%simpson('e^x',0,1)
%ans = 1.7189

%the actual value of the integral of the function
%octave:16> syms x
%octave:17> int(e^x,0,1)
%ans = (sym) -1 + ℯ
%octave:18> eval(ans)
%ans = 1.7183


%actual value -> 1.7183
%approximate value -> 1.7189



function y=simpson(f,a,b)

str1='@(x)';
str2=f;
str=[str1 str2];
ff=str2func(str);

x1=(a+b)/2;
h=x1;

y=(h/3).*(ff(a)+4.*ff(x1)+ff(b));