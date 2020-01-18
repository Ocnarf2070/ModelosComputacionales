clear;
clc;
close all;

load DatosXOR
LR=0.01;
Limites=[-1.5, 2.5, -1.5, 2.5];
MaxEpoc=100;

W=PerceptronWeigthsGenerator(Data);
Epoc=1;
errors = zeros(MaxEpoc,1);
th=0.001;
ver=1;
while Epoc<=MaxEpoc && ver
    for i=1:size(Data,1)
        [Input,Output,Target]=ValoresIOTADALINE(Data,W,i);
        dif(i)=Target-Output;
        W=UpdateNet(W,LR,Output,Target,Input);
        Output=Signo(Output);
        %GrapDatos(Data,Limites);
        %GrapPatron(Input,Output,Limites)
        %GrapNeuron(W,Limites);hold off;
        %drawnow;
        %pause;
        
    end
    error = 1/2 * (sum((dif).^2));
    errors(Epoc) = error;
    %{
    if Epoc>2
        dE=errors(Epoc-1)-error;
        if(dE<th)
            ver=0;
        end
    end
    %}
    Epoc
    Epoc=Epoc+1;
    
end
figure
plot(1:Epoc-1,errors(1:Epoc-1));


