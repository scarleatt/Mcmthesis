clc, clear all
Fv=2:0.1:8;Fob=10;D=3000;
h=(Fv*D/2).*sqrt(1./(Fob^2-Fv.^2))
plot(Fv,h,'k-','linewidth',2)
axis([0,12,0,1000])
hold on
Fv=2:0.1:12;
Fob=12;D=3000;
h=(Fv*D/2).*sqrt(1./(Fob^2-Fv.^2))
plot(Fv,h,'r-','linewidth',2)
hold on
Fv=2:0.1:10;
Fob=14;D=3000;
h=(Fv*D/2).*sqrt(1./(Fob^2-Fv.^2))
plot(Fv,h,'b-','linewidth',2)
hold on
Fv=2:0.1:12;
Fob=16;D=3000;
h=(Fv*D/2).*sqrt(1./(Fob^2-Fv.^2))
plot(Fv,h,'k-','linewidth',2)
hold on
Fv=2:0.1:12;
Fob=18;D=3000;
h=(Fv*D/2).*sqrt(1./(Fob^2-Fv.^2))
plot(Fv,h,'g-','linewidth',2)
hold on
Fv=2:0.1:12;
Fob=20;D=3000;
h=(Fv*D/2).*sqrt(1./(Fob^2-Fv.^2))
plot(Fv,h,'Y-','linewidth',2)
hold on
legend('10MHZ','12MHZ','14MHZ','16MHZ','18MHZ','20MHZ')