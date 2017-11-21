 clear all;close all;clc
 
inputs=[0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1];
targets=[0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1]; 
%targets=[0 1];
net=newff( inputs, [35 20] , {'logsig', 'purelin', 'traingdx'});
%view(net);
A = [0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
B = [1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0];
C = [0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 0 1 1 1 0];
D = [1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0];
E = [1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1];
F = [1 1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0];
G = [0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
H = [1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
I = [0 1 1 1 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 1 1 0];
J = [1 1 1 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
K = [1 0 0 0 1 1 0 0 1 0 1 0 1 0 0 1 1 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 0 1];
L = [1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1];
M = [1 0 0 0 1 1 1 0 1 1 1 0 1 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1];
N = [1 0 0 0 1 1 0 0 0 1 1 1 0 0 1 1 0 1 0 1 1 0 0 1 1 1 0 0 0 1 1 0 0 0 1];
O = [0 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
P = [1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0];
R = [1 1 1 1 0 1 0 0 0 1 1 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1 0 0 1 0 1 0 0 0 1];
S = [0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 0 1 0 1 1 1 0];
T = [1 1 1 1 1 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0];
Z = [1 1 1 1 1 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 1 1 1 1 1];
    
litery=[A;B;C;D;E;F;G;H;I;J;K;L;M;N;O;P;R;S;T;Z];
litery=litery';

wy=zeros(20);
for i=1:20
   wy(i,i)=1;
end


wy=wy';
Y=sim(net,litery);
net.trainParam.max_fail=8;
net.trainParam.goal = 0.0001;% oczekiwana koñcowa wartoœæ funkcji celu 
%net.trainParam.mu=0.001;

 net.trainParam.lr=0.1;
 net.trainParam.epochs=2000;
 [net tr1] =trainrp(net,litery,wy)
 plotperf(tr1);
%  
%  [net tr1] =traingdx(net,litery,wy)
%  plotperf(tr1);
%  
%  [net tr1] =traingdx(net,litery,wy)
    %[net tr1] =traingdx(net,litery,wy)
    
% plotperf(tr1)
  
% %  

%disp(net)
%Y=sim(net,litery);
litera=input('litera: ', 's');


switch litera
    case 'A'
       test1=A';  
    case 'B'
       test1=B'; 
    case 'C'
       test1=C'; 
    case 'D'
       test1=D';  
    case 'E'
       test1=E'; 
    case 'F'
       test1=F'; 
     case 'G'
         test1=G';  
    case 'H'
       test1=H'; 
    case 'I'
       test1=I'; 
    case 'J'
       test1=J';  
    case 'K'
       test1=K'; 
    case 'L'
       test1=L'; 
    case 'M'
       test1=M';  
    case 'N'
       test1=N'; 
    case 'O'
       test1=O'; 
    case 'P'
       test1=P';  
    case 'R'
       test1=R'; 
    case 'S'
       test1=S';  
    case 'T'
       test1=T'; 
    case 'Z'
       test1=Z';
    otherwise
        disp('nie ma takiej litery')
end

%test1=[1 1 1 1 1 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0 0]';
    test=sim(net,test1);
clc
max(test);
%ans1=test(20)
for i=1:20
   if(test(i)<0.1)
       test(i)=0
   end
    if(max(test)== test(i))
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
            msgbox('R');
         end
         if(i==18)
            msgbox('S');
         end
         if(i==19)
            msgbox('T');
         end
         if(i==20)
            msgbox('Z');
         end
        
    end
end

%sleep;
%view(net)
%disp(net)
test1=sim(net,litery);
for j=1:20
for i=1:20
   if(test1(j,i)<0.001)
       test1(j,i)=0;
%msgbox('df');
   end
end
end
test=test';