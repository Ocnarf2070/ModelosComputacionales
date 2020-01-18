function Vecindad=FuncionVecindadB(IndGan,W,Indices)
    Vecindad=zeros(size(W,2),size(W,3));
    for i=1:size(Indices,3)
        Vecindad(:,i)=pdist2(IndGan',Indices(:,:,i)')';
    end
    Vecindad = exp(-Vecindad); 
end

