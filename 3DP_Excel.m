clc
clear all

data = xlsread('df2.xlsx');

x = data(:,1); % CH4 Conversion
y = data(:,2); % C2 Selectivity 
z = data(:,3); % Temperature

t = delaunay(x,y);
s = trisurf(t,x,y,z), 'Facealpha', 0.9, 'Facelighting', 'gouraud';
alpha(0.8);

shading interp;
colormap jet;

title('Temperature vs. CH4 Conversion and C2 Selectivity')
xlabel('CH4 Conversion %')
ylabel('% CO2')
zlabel('Temperature')

colorbar;
grid on;
view(3);
