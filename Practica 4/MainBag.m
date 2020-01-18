clear;
clc;
close all;

load DatosOR
LR=0.5;
Limites=[-1.5, 2.5, -1.5, 2.5];
MaxEpoc=100;

W=PerceptronWeigthsGenerator(Data);
Epoc=1;
mod=1;
pocketedWeights=zeros(size(W));
run=0;
runw=0;

while Epoc<MaxEpoc && mod ~= 0
    mod=0;
    for i=1:size(Data,1)
        [Input,Output,Target]=ValoresIOT(Data,W,i);
        
        %GrapDatos(Data,Limites);
        %GrapPatron(Input,Output,Limites);
        %GrapNeuron(W,Limites);hold off;
        %pause;
        
        if Output~=Target
            mod=mod+1;
            run=0;
            W=UpdateNet(W,LR,Output,Target,Input);
        else
            run = run+1;
            if run > runw
                runw = run;
                pocketedWeights=W;
            end
                
        end
        
        GrapDatos(Data,Limites);
        GrapPatron(Input,Output,Limites)
        GrapNeuron(pocketedWeights,Limites);hold off;
        drawnow;
        pause;
        
    end
    Epoc=Epoc+1;
end


