function Prob=BP_Calcular_Prob(W,Data,Parameter)
    for N=1:Parameter.NumLayer
        h_PC{N}=zeros(1,Parameter.NumNeu(N+1));
        S_PC{N}=zeros(1,Parameter.NumNeu(N+1));
    end
    [S_PC,h_PC] = BP_Output_Neurona(W,h_PC,S_PC,Data(:,1:end-1),Parameter);
    Output=S_PC{end}>=0.5;
    Val=Output==Data(:,end);
    Prob = sum(Val)/size(Data,1);
end

