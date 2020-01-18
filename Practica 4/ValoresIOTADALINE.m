function [Input,Output,Target] = ValoresIOTADALINE(Data,W,i)
    N=size(Data,2);
    Input = Data(i,1:N-1);
    Input(N)=-1;
    Output=Input*W;
    Target=Data(i,N);
end

