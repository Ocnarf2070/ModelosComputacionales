clc;
clear;
close all;
load('Datos.mat');
% rng(1)
%Data=[1 1;1 2;2 1;2 2;4 1;4 2;5 1;5 2];

NumNeu=4;
LRini=0.08;
IterMax=50;
%IterMax=1;
% ----Iniciar W------
[NumPat,NumInp]=size(Data);
Indices=ceil(rand(NumNeu,1)*NumPat);
% Indices=1:NumPat;
W=Data(Indices,:)';
%W=[1 4.5;1.5 1];
% -----------------------


for i=1:IterMax
    i
    %IndIter=ceil(rand(1,1)*NumPat);  %--Step 1
    %Patron=Data(IndIter,:);
    Patron=Data(:,:);
    
    GrapEvol(Data,W,NumNeu,Patron)
    %pause
    
    LR=LRini*(1-i/IterMax);
    Hs=CalculoHs(W,Patron);
    Ys=CalculoYs(Hs);
    W=ModificarPesos(W,Ys,Patron,LR);
    
    GrapEvol(Data,W,NumNeu,Patron)
    %pause
       
end

GrapFinal(Data,W,NumNeu,NumPat)

