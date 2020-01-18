clear;
clc;
close all;

%load DatosAND
Data=[1  1  1;
      1 -1 -1;
     -1  1 -1;
     -1 -1 -1];
LR=0.5;
Limites=[-1.5, 2.5, -1.5, 2.5];
MaxEpoc=100;

W=[0.3;-0.2;-0.6];
%W=PerceptronWeigthsGenerator(Data);
Epoc=1;

while ~CheckPattern(Data,W) && Epoc<MaxEpoc
     for i=1:size(Data,1)
        [Input,Output,Target]=ValoresIOT(Data,W,i);
        
        GrapDatos(Data,Limites);
        GrapPatron(Input,Output,Limites);
        GrapNeuron(W,Limites);hold off;
        pause;
        
        if Output~=Target
           W=UpdateNet(W,LR,Output,Target,Input);
        end
        
        GrapDatos(Data,Limites);
        GrapPatron(Input,Output,Limites)
        GrapNeuron(W,Limites);hold off;
        %pause;
     
    end
    Epoc=Epoc+1;
end


