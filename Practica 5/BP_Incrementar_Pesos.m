function W=BP_Incrementar_Pesos(W,Deltas,S,Pattern,Parameter)
    for i = 1:Parameter.NumLayer
        if i == 1
            dw = Parameter.Eta*Pattern'*Deltas{i};
        else
            dw = Parameter.Eta*S{i-1}'*Deltas{i};
        end
         W{i} = W{i} + dw;
    end
end

