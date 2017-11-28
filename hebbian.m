close all; clear all; clc;

 A=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
 B=[1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0];
 C=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 0 1 1 1 0];
 D=[1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0];
 E=[1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1];
 F=[1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0];
 G=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
 H=[1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
 I=[0 1 1 1 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 1 1 0];
 J=[1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
 K=[1 0 0 0 1 1 0 0 1 0 1 0 1 0 0 1 1 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 0 1];
 L=[1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1];
 M=[1 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
 N=[1 0 0 0 1 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 0 0 1 1 0 0 0 1];
 O=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
 P=[1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0];
 Q=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 0 1 1 0 0 1 1 0 1 1 1 1];
 R=[1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 0 1 0 0 0 1];
 S=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
 T=[1 1 1 1 1 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0];
  A1=[1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 0 0 0 0 1];
  A2=[0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
  A3=[0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
  wyjscie = eye(20);

 litery=[A;B;C;D;E;F;G;H;I;J;K;L;M;N;O;P;Q;R;S;T];
 %litery=[A;B;C;D;E;F;G;H;I;J;K;L;M;N;O;P;Q;A1;A2;A3];
 litery=litery';
 testA1=[0	1	1	1	0 ...
1	0	0	0	1 ...
1	0	0	0	1 ...
1	1	1	1	1 ...
0	0	0	0	1 ...
0	0	0	0	1 ...
0	0	0	0	1];
testA1=testA1';
testA=[0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1 ;1 ;1; 1; 1; 1 ;0; 0; 0; 1; 1 ;0; 0; 0; 1; 1 ;0; 0; 0; 1;];
 testB=[1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 1; 1; 0; 0;];    
 testC=[0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 1; 0; 1; 1; 1; 0;];
 testD=[1; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 1; 1; 0;];
 testE=[1; 1; 1; 1; 1; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 1; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 1; 1;];
 testF=[1; 1; 1; 1; 1; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 1; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0;];
 testG=[0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 0; 1; 0; 1; 1; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 0; 1; 1; 1; 0;];
 testH=[1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 1; 1; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1;];
 testI=[0; 1; 1; 1; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 1; 1; 1; 0;];
 testJ=[1; 1; 1; 1; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 0; 0; 0; 1; 0; 1; 1; 1; 0;];
 testK=[1; 0; 0; 0; 1; 1; 0; 0; 1; 0; 1; 0; 1; 0; 0; 1; 1; 0; 0; 0; 1; 0; 1; 0; 0; 1; 0; 0; 1; 0; 1; 0; 0; 0; 1;];
 testL=[1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 1; 1;];
 testM=[1; 0; 0; 0; 1; 1; 1; 0; 1; 1; 1; 0; 1; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1;];
 testN=[1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 0; 0; 1; 1; 0; 1; 0; 1; 1; 0; 0; 1; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1;];
 testO=[0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 0; 1; 1; 1; 0;];
 testP=[1; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 1; 1; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0;];
 testQ=[0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 0; 1; 0; 1; 1; 0; 0; 1; 1; 0; 1; 1; 1; 1;];
 testR=[1; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 1; 1; 0; 1; 0; 1; 0; 0; 1; 0; 0; 1; 0; 1; 0; 0; 0; 1;];
 testS=[0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 0; 0; 0; 0; 0; 1; 1; 1; 0; 0; 0; 0; 0; 1; 1; 0; 0; 0; 1; 0; 1; 1; 1; 0;];
 testT=[1; 1; 1; 1; 1; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0;];

 testA2=[0	0	1	1	0 ...
0	0	0	0	1 ...
0	0	0	0	1 ...
1	1	1	1	1 ...
1	0	0	0	1 ...
1	0	0	0	1 ...
1	0	0	0	1];
testA2=testA2';
testA3=[0	1	1	1	0 ...
1	0	0	0	1 ...
1	0	0	0	1 ...
1	0	0	0	1 ...
1	0	0	0	1 ... 
1	0	0	0	1 ...
1	0	0	0	1]; 
testA3=testA3';
testO1=[0	1	1	1	0 ...
0	0	0	0	1 ... 
0	0	0	0	1 ... 
0	0	0	0	1 ...
1	0	0	0	1 ... 
1	0	0	0	1 ...
1	1	1	1	1];
testO1=testO1';
%net=newff( minmax(litery), 20, {'logsig', 'purelin', 'train', 'learnh'});
net=newff( minmax(litery),  20, {'logsig', 'purelin', 'trainlm', 'learnh'});
net.trainParam.epochs = 100;
net.trainParam.goal = 0.001; %Cel wydajnoœci
net.trainParam.lr=0.08; % wska¿nik uczenia sie 
lp.dr = 0.05;
lp.lr = 0.01;
 %learnh([],litery,[],[],wyjscie,[],[],[],[],[],lp,[])
dw=learnh([0],litery,[0],[0],wyjscie,[0],[0],[0],[0],[0],lp,[0]);
wynik=sim(net, litery);
litera=input('podaj litere do rozpoznania : ', 's');
 net.trainFcn = 'trainbr';
 net.adaptFcn = 'adaptwb';
%net.inputWeights{:,:}.learnFcn = 'learnh';
%net.layerWeights {:,:} .learnFcn = 'learnh';
net.inputWeights{:,:}.learnFcn = 'learnh';
net.layerWeights {:,:} .learnFcn = 'learnh';
%net.trainParam.epochs = 30;
%net=train(net, litery, wyjscie);

net=train(net, litery,wyjscie);
%plotperf(tr);
wynik=sim(net, litery);
switch litera % Sprawdzenie czy jest taka literka ktora podalismy 
    case 'A'
       test=testA;  
    case 'B'
       test=testB; 
    case 'C'
       test=testC; 
    case 'D'
       test=testD;  
    case 'E'
       test=testE; 
    case 'F'
       test=testF; 
    case 'G'
       test=testG;  
    case 'H'
       test=testH; 
    case 'I'
       test=testI; 
    case 'J'
       test=testJ;  
    case 'K'
       test=testK; 
    case 'L'
       test=testL; 
    case 'M'
       test=testM;  
    case 'N'
       test=testN; 
    case 'O'
       test=testO; 
    case 'P'
       test=testP;  
    case 'Q'
       test=testQ; 
    case 'R'
       test=testR; 
    case 'S'
       test=testS;  
    case 'T'
       test=testT;
    case 'A1'
       %test=testR; 
       test=testA1;
    case 'A2'
       %test=testS; 
       test=testA2;
    case 'A3'
       %test=testT; 
       test=testA3;
         case 'O1'
       %test=testT; 
       test=testO1;
    otherwise
        disp('nie ma takiej litery')
    end


test1=sim(net,test);
     for i=1:20
    if(max(test1)== test1(i)) % Sprawdzenie czy nauczy³a sie podanej przez nas literki 
        if(i==1)
            msgbox('A');
        end
         if(i==2)
            msgbox('B');
         end
         if(i==3)
            msgbox('C');
         end
         if(i==4)
            msgbox('D');
         end
         if(i==5)
            msgbox('E');
         end
         if(i==6)
            msgbox('F');
         end
         if(i==7)
            msgbox('G');
         end
         if(i==8)
            msgbox('H');
         end
         if(i==9)
            msgbox('I');
         end
         if(i==10)
            msgbox('J');
         end
         if(i==11)
            msgbox('K');
         end
         if(i==12)
            msgbox('L');
         end
         if(i==13)
            msgbox('M');
         end
         if(i==14)
            msgbox('N');
         end
         if(i==15)
            msgbox('O');
         end
         if(i==16)
            msgbox('P');
         end
         if(i==17)
            msgbox('Q');
         end
         if(i==18)
            msgbox('R');
         end
         if(i==19)
            msgbox('S');
         end
         if(i==20)
            msgbox('T');
         end
        
    end
     end

   

for i=1:20
   if(test1(i)<0.001)
       test1(i)=0;
%msgbox('df');

   end
   

   test1=test1';
   
end