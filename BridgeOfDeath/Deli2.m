u = linspace(0,5*pi,100); % define a set of evenly spaced points between 0 and 2*pi
VL1 = 0.2E0.*((0.7424E0+(-0.512E0).*cos(u.*0.2)).^(1/2)+(-0.127E0).*((-0.145E1)+0.1E1.*cos(u.*0.2)).^(-3).*(0.920175E1+0.3525E1.*cos(u.*0.2).^2+0.222045E-15.*cos(u.*0.2).^4+(-0.333067E-15).*cos(u.*0.2).^5+(-0.3525E1).*sin(u.*0.2).^2+0.222045E-15.*sin(u.*0.2).^4+cos(u.*0.2).^3.*((-0.375E0)+0.333067E-14.*sin(u.*0.2).^2)+cos(u.*0.2).*((-0.121088E2)+0.1125E1.*sin(u.*0.2).^2+(-0.166533E-14).*sin(u.*0.2).^4)+(-0.333067E-15).*sin(2.*u).^2));
VR1 = 0.2E0.*((0.7424E0+(-0.512E0).*cos(u.*0.2)).^(1/2)+0.127E0.*((-0.145E1)+0.1E1.*cos(u.*0.2)).^(-3).*(0.920175E1+0.3525E1.*cos(u.*0.2).^2+ 0.222045E-15.*cos(u.*0.2).^4+(-0.333067E-15).*cos(u.*0.2).^5+(-0.3525E1).* sin(u.*0.2).^2+0.222045E-15.*sin(u.*0.2).^4+cos(u.*0.2).^3.*((-0.375E0)+0.333067E-14.*sin(u.*0.2).^2)+cos(u.*0.2).*((-0.121088E2)+0.1125E1.*sin(u.*0.2).^2+(-0.166533E-14).*sin(u.*0.2).^4)+(-0.333067E-15).*sin(2.*u).^2));
figure()
plot(u,VL1,u,VR1)
title('Speed of Left Wheel and Right Wheel')
xlabel('time(s)')
ylabel('Speed(m/s)')


legend({'Left Wheel','Right Wheel'},'Location','southwest')