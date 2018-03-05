clc, clear all
f=17.68;h=90;R=6370;
a=1;Gt=1;Pt=100;
d=50:500;
sig1=atan(cot(d./(2*R))-(R/(R+h)).*(1./sin(d./(2*R))));
r=2*R.*(sin(d./(2*R))./cos(sig1+(d./(2*R))))
Lbf=32.44+20*log10(f)+20*log10(r)
Lf1=8.9;Lf2=1.4438;
E=136.6+Pt+Gt+20*log10(f)-Lbf-Lf1-Lf2;
Ej=15;
SNR=20*log10(E./Ej);
plot(d,SNR)
hold on
f=5;h=90;R=6370;
a=1;Gt=1;Pt=100;
d=50:500;
d=d/2;
sig1=atan(cot(d./(2*R))-(R/(R+h)).*(1./sin(d./(2*R))));
r=2*R.*(sin(d./(2*R))./cos(sig1+(d./(2*R))))
Lbf=32.44+20*log10(f)+20*log10(r)
Lf1=8.9;Lf2=1.4438;
E=136.6+Pt+Gt+20*log10(f)-2*Lbf-2*Lf1-2*Lf2;
Ej=15;
SNR=20*log10(E./Ej);
plot(d,SNR)
xlabel('distance d(km)')
ylabel('SNR (dB)')
legend('first reflex','second reflex')