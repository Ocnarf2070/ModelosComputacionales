W=genpesos([pu0 pu4]);
%pal=sign (rand (100,1)-0.5);
%plothopduncorr (W, betai, pal, etai,50, R);
plothopduncorr (W, betai, noisevector(pu4,0.9), etai,50, R);