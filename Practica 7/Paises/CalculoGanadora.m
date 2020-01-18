function [Gx,Gy]=CalculoGanadora(W,Patron)
    hs=zeros(size(W,2),size(W,3));
    O=1/2*sum(W.*W);
    hs(:,:)=sum(W.*Patron)-O;
    ys=hs==max(max(hs));
    [Gx,Gy]=find(ys);
end