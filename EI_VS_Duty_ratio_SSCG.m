d=0:.005:1;
 hold on
 
 g20 = (1 + 2*d - 2*d.^2) ./ ((1 - d).^2);
 plot(d,g20,'-r','linewidth',3)
 
 g21 = (1 + d) ./ (1 - d).^2;
 plot(d,g21,'-g','linewidth',3)
 
 g22 = 4 ./ (1 - d).^2;
 plot(d,g22,'-b','linewidth',3)

 g23 = (2 - d).^2 ./ (1 - d).^2;
 plot(d,g23,':k','linewidth',3)
 
 g24 = (3 - d) ./ (1 - d).^2;
 plot(d,g24,'-m','linewidth',3)

 g25 = 3 ./ (1 - d).^2;
plot(d,g25,'-r','linewidth',1)

g26 = (4 - 2*d) ./ (1 - d).^2;
plot(d,g28,'-g','linewidth',1)

g27 = (3 - d) ./ (1 - d).^2;
plot(d,g27,'-b','linewidth',1)

g28 = d ./ ((1 - d).^3);
plot(d,g28,':k','linewidth',1)

g29 = 1 ./ (1 - d).^3;
plot(d,g29,'-m','linewidth',1)

g30 = 1 ./ (1 - d).^2;
plot(d,g30,'-m','linewidth',1)


gPC = 1 ./ (1 - d).^3;
plot(d,gPC,'-k','linewidth',3)
 

legend ('REF [20]','REF [21]','REF [22]','REF [23]','REF [24]','REf [25]','REF [26]','REF [27]','REF [28]','REF [29]','REF [30]','SSCG')
 






d=0:.005:1;
hold on