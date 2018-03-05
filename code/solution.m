clc, clear all
sig1=0.1:0.01:pi/2;
f=17.68;h=90;R=6370;
Gt=1;Pt=100;
d=2*h./tan(sig1);
r=2*R.*(sin(d./(2*R))./cos(sig1+(d./(2*R))));
Lbf=32.44+20*log10(f)+20*log10(r);
% multi-hop sea-surface reflection loss
b=0.1:0.01:pi/2;
a2=80;ro=4;bc=3*10^2/17.68;
a1=a2-60*bc*ro*i;
Rv=(a1.*sin(b)-sqrt(a1-(cos(b).^2)))./(a1.*sin(b)+sqrt(a1-(cos(b).^2)));
Rh=(sin(b)-sqrt(a1-(cos(b).^2)))./(sin(b)+sqrt(a1-(cos(b).^2)));
Lf=10.*log10(((abs(Rv)).^2+(abs(Rh)).^2)/2) ;
%Ionospheric absorption loss
f=17.68;h=90;R=6370;
R12=100;fh=1.2;
X=0.5;
a=asin(0.985.*cos(sig1));
Ij=(1+0.00037*R12)*(cos(0.881*X))^1.3;
Li=((677.2.*sec(a))/((f+fh)^1.98+10.2))*Ij;

E=136.6+Pt+Gt+20*log10(f)-Lbf-Lf-Li;
Ej=10;
SNR=20*log10(E./Ej);
plot(sig1,SNR)
hold on
d1=d/2;r=2*R.*(sin(d1./(2*R))./cos(sig1+(d1./(2*R))));
Lbf=32.44+20*log10(f)+20*log10(r)
% multi-hop sea-surface reflection loss.
b=0.1:0.01:pi/2;
a2=80;ro=4;bc=3*10^2/17.68;
a1=a2-60*bc*ro*i;
Rv=(a1.*sin(b)-sqrt(a1-(cos(b).^2)))./(a1.*sin(b)+sqrt(a1-(cos(b).^2)));
Rh=(sin(b)-sqrt(a1-(cos(b).^2)))./(sin(b)+sqrt(a1-(cos(b).^2)));
Lf2=10.*log10(((abs(Rv)).^2+(abs(Rh)).^2)/2) ;
%Ionospheric absorption loss
f=17.68;h=90;R=6370;
R12=100;fh=1.2;
X=0.5;
a=asin(0.985.*cos(sig1));
Ij=(1+0.00037*R12)*(cos(0.881*X))^1.3;
Li2=((677.2.*sec(a))/((f+fh)^1.98+10.2))*Ij;
E2=136.6+Pt+Gt+20*log10(f)-2*Lbf-Lf-Li-Lf2-Li2;
Ej=10;
SNR2=20*log10(E2./Ej);
plot(sig1,SNR2);
legend('First Reflex','Second Reflex')
xlabel('Angle of incidence (rad)')
ylabel('SNR (dB)')
