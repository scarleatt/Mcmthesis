clc, clear all
w=14;
Rc=sqrt(0.003+0.00192*w+0.002);
Ru=sqrt(0.00316*w+0.004);
C21=0.01-0.0086*w+0.03;
C03=0.04-0.033*w+0.12
C40=0.40+0.23;
C22=0.12+0.06;
C04=0.23+0.41;
a=-10:0.01:10;
b=-10:0.01:10;
[a,b]=meshgrid(a,b);
g=1-(1/2).*C21*(a.^2-1).*b-(1/6).*C03*(b.^3-3*b)+(1/24).*C40.*(a.^4-6*a.^2+3)+(1/4)*C22*(a.^2-1)*(b.^2-1)+(1/24)*C04*(b.^4-6*b.^2+3);
k=find(g<=0.01);
plot(a(k)*Rc,b(k)*Ru)