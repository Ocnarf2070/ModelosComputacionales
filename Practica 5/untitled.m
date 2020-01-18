Data = randn(1,21);
K=8;
N=size(Data,2);
for i=1:ceil(N/K) 
        bi=N-(i-1)*K-mod(N,K);
        a=[Data(1:bi),Data(bi+K+1:end)];
    if i==1
        b=Data(bi+1:end);
    else
        b=Data(bi+1:bi+K);
    end
    n1=ismember(Data,a)
    n2=ismember(Data,b)
    
end