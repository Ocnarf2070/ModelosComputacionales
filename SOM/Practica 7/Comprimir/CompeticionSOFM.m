function Ganadoras=CompeticionSOFM(Model,Muestras)
    for i=1:size(Muestras,2)
        Ganadoras(i)=CalculoGanadora(Model.Medias,Muestras(:,i));
    end
end