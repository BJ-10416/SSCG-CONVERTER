clc; clear; close all;

%% --------------------------------------------------------------
% G RANGE
%% --------------------------------------------------------------
G = 1:1:50;     
d = linspace(0.1,0.9,50);   

%% --------------------------------------------------------------
% REF - 20
%% --------------------------------------------------------------
D20 = ((G+1) - sqrt(G+3)) ./ (G+2);
TCVS20 = (3 + 5*d - 5*d.^2) ./ (1 + 2*d - 2*d.^2);

%% REF - 21
D21 = ((2*G+1) - sqrt(8*G+1)) ./ (2*G);
TCVS21 = (2 + 3*d - d.^2) ./ (1 + d);

%% REF - 22
D22 = sqrt(G-4) ./ sqrt(G);
TCVS22 = (d - 3).^2 / 4;

%% REF - 23
D23 = (sqrt(G) - 2) ./ (sqrt(G) - 1);
TCVS23 = ((3*d).^2 - 10*d + 8) ./ ((2 - d).^2);

%% REF - 24
D24 = ((2*G - 1) - sqrt(8*G+1)) ./ (2*G);
TCVS24 = (10 - 5*d)./3 - d;

%% REF - 25
D25 = 1 - sqrt(3)./sqrt(G);
TCVS25 = (6 - d)./3;

%% REF - 26
D26 = ((G - 1) - sqrt(2*G+1)) ./ G;
TCVS26 = (7 - 4*d) ./ (4 - 2*d);

%% REF - 27
D27 = ((2*G - 1) - sqrt(8*G+1)) ./ (2*G);
TCVS27 = d.*((5*d).^2 - 11*d + 9) ./ ((3-d).*(1-d));

%% REF - 28
D28_ref = ((-1./(2*G)) - sqrt((27*G)+4)./(108*(G.^3))).^(1/3);
TCVS28 = (d.^2 - 2*d + 2) ./ d;

%% REF - 29
D29 = 1 - 1 ./ (G.^(1/3));
TCVS29 = (d - 2).^2;

%% REF - 30  (CORRECTED)
D30 = sqrt(G-1) ./ sqrt(G);
TCVS30 = 2 - (d).^2;

%% SSCG Converter
D_SSCG = 1 - 1 ./ (G.^(1/3));
TCVS_SSCG = 2 - d;

%% --------------------------------------------------------------
% COLORS (All distinct)
%% --------------------------------------------------------------
C = lines(11);

%% --------------------------------------------------------------
% PLOT
%% --------------------------------------------------------------
figure; hold on;

figure; hold on;

plot(G,TCVS20,'Color',C(1,:),'LineWidth',6,'Marker','o');
plot(G,TCVS21,'Color',C(2,:),'LineWidth',6,'Marker','s');
plot(G,TCVS22,'Color',C(3,:),'LineWidth',6,'Marker','^');
plot(G,TCVS23,'Color',C(4,:),'LineWidth',6,'Marker','d');
plot(G,TCVS24,'Color',C(5,:),'LineWidth',6,'Marker','p');
plot(G,TCVS25,'Color',C(6,:),'LineWidth',6,'Marker','v');
plot(G,TCVS26,'Color',C(7,:),'LineWidth',6,'Marker','h');
plot(G,TCVS27,'Color',C(8,:),'LineWidth',6,'Marker','>');
plot(G,TCVS28,'Color',C(9,:),'LineWidth',6,'Marker','<');
plot(G,TCVS29,'Color',C(10,:),'LineWidth',6,'Marker','x');
plot(G,TCVS30,'Color',C(11,:),'LineWidth',6,'Marker','+');

% Proposed SSCG (BLACK SOLID)
plot(G,TCVS_SSCG,'k','LineWidth',7);


xlabel('Voltage Gain (G)','FontWeight','bold')
ylabel('TCVS','FontWeight','bold')
title('TCVS vs Voltage Gain Comparison')

legend('Ref[20]','Ref[21]','Ref[22]','Ref[23]','Ref[24]',...
       'Ref[25]','Ref[26]','Ref[27]','Ref[28]','Ref[29]',...
       'Ref[30]','Proposed SSCG','Location','northwest')

grid on
box on
set(gca,'FontWeight','bold','LineWidth',1.2)
