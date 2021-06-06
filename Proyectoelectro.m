%%
epsilon0 = (8.85 .*(10^-12));
a =1;
%%
clf;
r=linspace(-10, 10);
phi=linspace(-pi/2,pi/2);
theta=linspace(0,2*pi);
[phi,theta] = meshgrid(phi,theta);
z=phi;
r = meshgrid(r);
[Dx, Dy, Dz]=sph2cart(theta,phi,r);

f = @(r, theta, phi) ((a.*sin(theta).*sin(phi)-cos(theta).*sin(phi)-cos(phi))./(4.*pi.*epsilon0.*r.^3));
figure(1);
title('Respecto eje y')
subplot (2,2,1)
surfc(Dx, Dy, f(r, theta, phi));
xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
view(-47,32);
%%
f2 = @(r, theta, phi) ((a.*2.*cos(theta)+sin(theta))./(4.*pi.*epsilon0.*r.^3));
subplot (2,2,2)
title('Respecto eje z')
contour3(Dx, Dy, Dz); hold on
surf(Dx, Dy, f2(r, theta, phi));
xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
view(-47,32);
%%
f3 = @(r, theta, phi) ((a.*2.*cos(theta)+sin(theta))./(4.*pi.*epsilon0.*r.^3));
subplot (2,2,3)
title('Respecto eje x')
surf(Dx, Dy, f3(r, theta, phi));
xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
view(-47,32);
%%
f4 = @(r, theta, phi) ((a.*2.*sin(3.14*theta).*sin(theta)+cos(3.14))+(-cos(3.14).*sin(theta)))./(4.*pi.*epsilon0.*r.^3);
figure(2);
title('Ejercicio 2 Campo con desplazamiento')
surf(Dx, Dy, f4(r, theta, phi));
xlabel('Eje X'); ylabel('Eje Y'); zlabel('Eje Z');
view(-47,32);