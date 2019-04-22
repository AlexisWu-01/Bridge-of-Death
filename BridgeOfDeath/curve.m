u = linspace(0,5*pi,100); % define a set of evenly spaced points between 0 and 2*pi
r = [(-0.8E0).*(0.6E0+(0.4E0+(-1).*cos(u.*0.2)).*cos(u.*0.2));0.8E0.*(0.4E0+(-1).*cos(u.*0.2)).*sin(u.*0.2);0*u.*0.2];% define the position vector
That = [(0.32E0+(-0.16E1).*cos(u.*0.2)).*(0.7424E0+(-0.512E0).*cos(u.*0.2)).^(-1/2) .*sin(u.*0.2);(0.7424E0+(-0.512E0).*cos(u.*0.2)).^(-1/2).*(0.32E0.*cos(u.*0.2)+(-0.8E0).*cos(u.*0.2).^2+0.8E0.*sin(u.*0.2).^2);0*u.*0.2];
Na = cos(0.14E1+u.*0.2).*((-0.278091E1).*cos(0.14E1+u.*0.2).*cos(0.371E1+ 0.265E1.*u.*0.2)+(-0.10494E1).*sin(0.14E1+u.*0.2).*sin(0.371E1+0.265E1.*u.*0.2)).*(cos(0.14E1+u.*0.2).^4.*(0.773346E1.*cos(0.371E1+0.265E1.*u.*0.2).^2+(-0.217626E-15).*sin(0.14E1+u.*0.2).^2)+0.868932E1.*cos(0.14E1+u.*0.2).^2.*cos(0.371E1+0.265E1.*u.*0.2).^2.*sin(0.371E1+0.265E1.*u.*0.2).^2+0.27531E0.*sin(0.28E1+2.*u.*0.2).^2.*sin(0.371E1+0.265E1.*u.*0.2).^2+(0.174101E-14.*cos(0.371E1+0.265E1.*u.*0.2).^2+0.123735E1.*sin(0.14E1+u.*0.2).^2).*sin(0.371E1+0.265E1.*u.*0.2).^4+0.364786E0.*csc(0.14E1+u.*0.2).^2.*sin(0.28E1+2.*u.*0.2).^3.*sin(0.742E1+0.53E1.*u.*0.2)+0.163949E1.*sin(0.28E1+2.*u.*0.2).*sin(0.371E1+0.265E1.*u.*0.2).^2.*sin(0.742E1+0.53E1.*u.*0.2)).^(-1/2);
Nb = sin(0.371E1+0.265E1.*u.*0.2).*(0.294776E1.*cos(0.14E1+u.*0.2).*cos(0.371E1+0.265E1.*u.*0.2)+0.111236E1.*sin(0.14E1+u.*0.2).*sin(0.371E1+0.265E1.*u.*0.2)).*(cos(0.14E1+u.*0.2).^4.*(0.773346E1.*cos(0.371E1+0.265E1.*u.*0.2).^2+(-0.217626E-15).*sin(0.14E1+u.*0.2).^2)+0.868932E1.*cos(0.14E1+u.*0.2).^2.*cos(0.371E1+0.265E1.*u.*0.2).^2.*sin(0.371E1+0.265E1.*u.*0.2).^2+0.27531E0.*sin(0.28E1+2.*u.*0.2).^2.*sin(0.371E1+0.265E1.*u.*0.2).^2+(0.174101E-14.* cos(0.371E1+0.265E1.*u.*0.2).^2+0.123735E1.*sin(0.14E1+u.*0.2).^2).*sin(0.371E1+0.265E1.*u.*0.2).^4+0.364786E0.*csc(0.14E1+u.*0.2).^2.*sin(0.28E1+2.*u.*0.2).^3.*sin(0.742E1+0.53E1.*u.*0.2)+0.163949E1.*sin(0.28E1+2.*u.*0.2).*sin(0.371E1+0.265E1.*u.*0.2).^2.*sin(0.742E1+0.53E1.*u.*0.2)).^(-1/2);
Nc = zeros(1,100);
Nhat = [((-0.264E1).*cos(u.*0.2).^2+0.16E1.*cos(u.*0.2).^3+0.216E1.*sin(u.*0.2).^2+cos(u.*0.2).*(0.464E0+(-0.8E0).*sin(u.*0.2).^2)).*(0.83209E1+0.555112E-16.*cos(u.*0.2).^5+(-0.381639E-16).*cos(u.*0.2).^6+(-0.29088E1).*sin(u.*0.2).^2+0.572459E-15.*cos(u.*0.2).^4.*sin(u.*0.2).^2+0.381639E-16.*sin(u.*0.2).^6+cos(u.*0.2).^3.*((-0.288E0)+(-0.555112E-15).*sin(u.*0.2).^2)+cos(u.*0.2).^2.*(0.29088E1+(-0.572459E-15).*sin(u.*0.2).^4)+cos(u.*0.2).*((-0.106099E2)+0.864E0.*sin(u.*0.2).^2+0.277556E-15.*sin(u.*0.2).^4)).^(-1/2);(-0.4E0).*sin(u.*0.2).*(0.116E1+(-0.12E2).*cos(u.*0.2)+0.7E1.*cos(u.*0.2).^2+0.1E1.*sin(u.*0.2).^2).*(0.83209E1+0.555112E-16.*cos(u.*0.2).^5+(-0.381639E-16).*cos(u.*0.2).^6+(-0.29088E1).*sin(u.*0.2).^2+0.572459E-15.*cos(u.*0.2).^4.*sin(u.*0.2).^2+0.381639E-16.*sin(u.*0.2).^6+cos(u.*0.2).^3.*((-0.288E0)+(-0.555112E-15).*sin(u.*0.2).^2)+cos(u.*0.2).^2.*(0.29088E1+(-0.572459E-15).*sin(u.*0.2).^4)+cos(u.*0.2).*((-0.106099E2)+0.864E0.*sin(u.*0.2).^2+0.277556E-15.*sin(u.*0.2).^4)).^(-1/2);0*u.*0.2];

for n = 1:length(u)% loop through each of the points
    plot3(r(1,:),r(2,:),r(3,:)), axis([-2 2 -2 2 -2 2]),hold on % plot the entire curve
    quiver3(r(1,n),r(2,n),r(3,n),That(1,n),That(2,n),That(3,n),'r') % plot the unit tangent
    quiver3(r(1,n),r(2,n),r(3,n),Nhat(1,n),Nhat(2,n),Nhat(3,n),'b') % plot the unit normal
    %quiver3(r(1,n),r(2,n),r(3,n),Bhat(1,n),Bhat(2,n),Bhat(3,n),'g'), 
    hold off % plot the unit binormal
    drawnow % force the graphic to update as it goes
end
