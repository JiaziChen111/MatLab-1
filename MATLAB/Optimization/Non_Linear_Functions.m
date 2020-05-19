clc; clear all
slCharacterEncoding('UTF-8');

x = -1:.01:2;
y = humps(x);
plot(x,y)
xlabel('x')
ylabel('humps(x)')
grid on

disp('Achando o minimo da função no intervalo [0.3, 1]');
x = fminbnd(@humps, 0.3, 1);

% definindo as op��es, interatividade e etc 

opts = optimset('Display', 'iter');
x = fminbnd(@humps, 0.3, 1, opts)

% vamos criar uma fun��o de 3 variaveis tal que:

% e seja :

v = [-.6 -1.2 0.135];

three_var(v) % fun��o no arquivo
fminsearch(@three_var, v, opts)

% para acharmos o maximo de uma fun��o basta aceitarmos g(x) = -f(x)
% por exemplo, o max para tan(cos(x))

[x fval] = fminbnd(@(x) -tan(cos(x)), 3, 8, opts)

x = 3:.1:8;
y = tan(cos(x));
plot(x, y)

