function W=ModificarPesos(W,Ys,Patron,LR)
    Ws=zeros(size(W));    
    for i=1:size(Patron,1)
        PatronP=Patron(i,:);
        YsP=Ys(i,:);
        Ws=Ws+YsP.*(PatronP'-W);
    end
    W=W+LR*Ws;
end

