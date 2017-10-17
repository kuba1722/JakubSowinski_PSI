%% AND
close all; clear all ;clc
net = newp([0 1;-2 2], 1);
P2 = [0 1 0 1;0 0 1 1];
T2 = [0 0 0 1 ];
net = init(net);
%net.IW{1}=[9 13];
%net.b{1}=[5]
Y = sim(net,P2);
%net.trainParam.epochs = 10;
net = train(net,P2,T2);
Y = sim(net,P2)
e=Y-T2
%plot(P2,Y-T2,'g',P2,T2,'b',P2,Y,'r')
%% NAND
close all; clear all ;clc
net = newp([0 1;-2 2], 1);
P2 = [0 1 0 1;0 0 1 1];
T2 = [1 1 1 0 ];
net = init(net);
%net.IW{1}=[1 1];
%net.b{1}=[0]
Y = sim(net,P2);
%net.trainParam.epochs = 20;
net = train(net,P2,T2);
Y = sim(net,P2);
e=Y-T2
%plot(P2,Y-T2,'g',P2,T2,'b',P2,Y,'r')
%% or
close all; clear all ;clc
net = newp([0 1;-2 2], 1);
P2 = [0 1 0 1;0 0 1 1];
T2 = [0 1 1 1 ];
net = init(net);
%net.IW{1}=[7 8];
%net.b{1}=[5]
Y = sim(net,P2);
%net.trainParam.epochs = 20;
net = train(net,P2,T2);
Y = sim(net,P2);
e=Y-T2
%plot(P2,Y-T2,'g',P2,T2,'b',P2,Y,'r')
%% NOR
close all; clear all ;clc
net = newp([0 1;-2 2], 1);
P2 = [0 1 0 1;0 0 1 1];
T2 = [1 0 0 0 ];
net = init(net);
%net.IW{1}=[20 17];
%net.b{1}=[2]
Y = sim(net,P2);
%net.trainParam.epochs = 20;
net = train(net,P2,T2);
Y = sim(net,P2);
%plot(P2,Y-T2,'g',P2,T2,'b',P2,Y,'r')
e=Y-T2

%% XOR
close all; clear all ;clc
net = newp([0 1;-2 2], 1);
P2 = [0 0 1 1;0 1 0 1];
T2 = [0 1 1 0 ];
net = init(net);
Y = sim(net,P2);
net.trainParam.epochs = 200;
net = train(net,P2,T2);
Y = sim(net,P2);
e=Y-T2
plot(P2,Y-T2,'g',P2,T2,'b',P2,Y,'r')
