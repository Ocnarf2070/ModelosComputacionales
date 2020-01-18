function [Input,Output,Target] = ValoresIOT(Data,W,i)
    N=size(Data,2);
    Input = Data(i,1:N-1);
    Input(N)=-1;
    Output=Signo(Input*W);
    Target=Data(i,N);
end

