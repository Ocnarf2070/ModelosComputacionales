function W=IncrementarPesos(W,Patron,Vecindad,eta)
    diff=Patron-W;
    dW=zeros(size(W));
    p_diff=zeros(size(W,2),size(W,3));
    for i=1:size(W,1);
        p_diff(:,:)=diff(i,:,:);
        dW(i,:,:)=eta*Vecindad.*p_diff;
    end
    W=W+dW;    
end

