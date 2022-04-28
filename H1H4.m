close all; clear all; clc
%#########################################################################
%                                 Re 10^5
%#########################################################################
%/////////////////////////////////////////////////////////////////////////
% Vr vs Ymáx 
%/////////////////////////////////////////////////////////////////////////


H= [ 2 5 8 10 12 15 18 20 ];
HH= [ 2 5 8 10 12 15 20 ];
nH2= [ 1.06 1.9 5.26 8 10.64 13.38 16 18.6 21 ];
nH3=[ 1.8 5.38 10.72 13.3 15.98 18.53 21.2 ];
mh2= [ 7 10 15 20  ];

% REFERENCIA Nieto et al.
H1 = [ 0.31 1.22 3.7 7.98 12.28 15.43 16.56 17.35 22.74 ];
H4 = [0.11 -3.13 -22.07 -40.12 -60.39 -81.05 -105.9];

% REFERENCIA Miranda
h1= [5.09 8.96 3.55 -0.6];
h4=[-6.34 -19.59 -53.85 -86.64];


% FRONCZAK et al ?0=0,035
hH1=[ 1.5179559 2.9352778 6.2919584 9.2593683 8.4682293 6.7398913 10.5855];
hH4=[ -1.0139444 -3.1239483 -12.4613101 -24.2136834 -35.8666709 -58.8956777 -97.2138619 ];

% Gráfico
figure(1)
plot(nH2, H1,'k--s')
hold on
plot(mh2, h2,'b-.o')
hold on
plot(HH, hH1,'r:d')
grid on
xlabel('V_{red}'), ylabel('H_{2}^{*}')
box off
leg = legend('Nieto et al. (2015)',' Miranda et al. (2014)', 'Fronczak 	(2022)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,25,-5,40])
hold off

figure(2)
plot(nH3, H4,'k--s')
hold on
plot(mh2, h4,'b-.o')
hold on
plot(HH, hH4,'r:d')
grid on
xlabel('V_{red}'), ylabel('H^{*}_{3}')
box off
leg = legend('Nieto et al. (2015)',' Miranda et al. (2014)', 'Fronczak 	(2022)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,25,-180,20])
hold off