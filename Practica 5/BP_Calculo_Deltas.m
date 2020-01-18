function Deltas=BP_Calculo_Deltas(S,Deltas,DiferT,W,Parameter)
    for i = fliplr(1:Parameter.NumLayer)
        if i == Parameter.NumLayer
            Deltas{i}=derivar(S{i})*DiferT;
        else
            sum = Deltas{i+1}*W{i+1}';
            Deltas{i} = derivar(S{i}).*sum;
        end
    end
end

