close all;clear all;clc
% Lista danych uczacych sie 
 a=[0	0	0	0	0 0	0	0	0	0 0	0	0	0	0 1	1	1	1	0 1	0	0	1	0 1	0	0	1	0 1	1	1	1	1 ];
b=[1	0	0	0	0 1	0	0	0	0 1	0	0	0	0 1	1	1	1	0 1	0	0	0	1 1	0	0	0	1 1	1	1	1	0 ];
c=[0	0	0	0	0 0	0	0	0	0 0	0	0	0	0 1	1	1	1	0 1	0	0	0	0 1	0	0	0	0 1	1	1	1	0 ];
d=[0	0	0	0	1 0	0	0	0	1 0	0	0	0	1 0	1	1	1	1 1	0	0	0	1 1	0	0	0	1 0	1	1	1	1 ];
e=[0	0	0	0	0 0	0	0	0	0 1	1	1	1	0 1	0	0	0	1 1	1	1	1	1 1	0	0	0	0 0	1	1	1	1 ];
f=[0	0	0	0	0 0	1	1	1	0 0	1	0	0	0 1	1	1	0	0 0	1	0	0	0 0	1	0	0	0 0	1	0	0	0 ];
g=[0	1	1	1	0 0	1	0	1	0 0	1	1	1	1 0	0	0	1	0 0	0	1	1	0 0	1	0	1	0 0	1	1	1	0 ];
h=[1	0	0	0	0 1	0	0	0	0 1	0	0	0	0 1	1	1	1	0 1	0	0	1	0 1	0	0	1	0 1	0	0	1	0 ];
i=[0	0	0	0	0 0	0	1	0	0 0	0	0	0	0 0	0	1	0	0 0	0	1	0	0 0	0	1	0	0 0	0	1	0	0 ];
j=[0	0	0	1	0 0	0	0	0	0 0	0	0	1	0 0	0	0	1	0 0	0	0	1	0 0	0	0	1	0 0	0	1	0	0 ];
male=[a;b;c;d;e;f;g;h;i;j];
 male=male';
litery=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1;
    1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0;
    0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 0 1 1 1 0;
    1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0;
    1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1;
    1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0;
    0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 0;
    1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1;
    0 1 1 1 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 1 1 0;
    1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0
    a;b;c;d;e;f;g;h;i;j];
litery=litery';
spr =j'; % litera ktora bedziemy sprawdzac czy nauczy³ sie okreslac wielkosc liter
wy=[1;1;1;1;1;1;1;1;1;1;0;0;0;0;0;0;0;0;0;0];% oczekiwane wartoœci sygna³ów wyjœciowych
wy=wy';
net2 = newp([0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1], 1); % utworzenie perceptronu
%net2 = init(net2);%Inicjalizacja struktury sieci neuronowej.
%net2.IW{1}=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]; % wektor z wagami zapisanymi przez nas 
Y = sim(net2,litery); %Symulacja sieci neuronowej dla zadanych danych wejœciowych.
net2.adaptParam.passes = 3; %3 pêtle doboru wag i przesuniêcia
[net2,z,x,Pf,Af,TR] = adapt(net2, litery, wy); % Adaptacja wag sieci neuronowej.
net2.trainParam.epochs = 20; % Ustwaienie ilosci epok podczas treningu
net2.trainParam.goal = 0.04;%kryterium stopu (sumê kwadratów b³êdów wyjœæ sieci)
[net2 tr] = train(net2,litery,wy); % Trening sieci neuronowej.
Y = sim(net2,litery); %Symulacja sieci neuronowej dla zadanych danych wejœciowych.
Y=sim(net2,spr) %Symulacja sieci neuronowej dla zadanych danych wejœciowych.
Y=Y';
plotperf(tr) % Wykreœla przebieg treningu sieci neuronowej
if Y==1
    msgbox('Podana literka jest duza');
else
    msgbox('Podana literka jest mala');
end