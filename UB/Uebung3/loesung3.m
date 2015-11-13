inv(X'*X)%%% clean environment
clear all
clc
close all

%%% Aufgabe 1

% definiere X,y
X = [1 181 40; 1 175 65; 1 180 50; 1 170 25; 1 178 48; 1 182 52; 1 185 36; 1 170 60];
y = [80; 72; 83; 65; 77; 78; 90; 85];

% loesung dozent
beta_p = inv(X'*X)*X'*y

% loesung student
A1 = inv(X'*X); % ungleich zur Aufgabenstellung durch Fehler: A1 != A2
A2 = [154.86 -0.85 -0.08; -0.85 0.005 0.0002; -0.08 0.0002 0.0008];
B = X'*y;
beta_s = A2*B

%%% Aufgabe 2

% runden(x,L)
L = 5; % try n error
x = 3; % try n error

if (x >0 && x >= 2^(L-1)) || (x<0 && x < 2^(L-1)-1)
    disp('error: Nicht genuegend Bits zur Repraesentation.')
else
    R = dual2(x,L);
end

% idee

add(0,y) = y
add(x+1,y) = 1+add(x,y)

mult(0,y) = 0
mult(x+1,y) = add(y,mult(x,y))

div(0,y) = 0
div(x+1,y)
    | mod(x+1,y) == 0 = x+1 + div(x,y)
    | otherwise = 0+ div(x,y)