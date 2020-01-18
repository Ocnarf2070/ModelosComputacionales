function Ganadoras=CalculoGanadorasData(W,data)
    for i=1:size(data,1)
        [x,y]=CalculoGanadora(W,data(i,:)');
        Ganadoras(i,:)=[x,y];
    end
end