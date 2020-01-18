function  [S,h] = BP_Output_Neurona(W,h,S,Pattern,Parameter)
    for i = 1:Parameter.NumLayer
        if i == 1
            h{i} = Pattern*W{i};
            S{i} = Sigmoide(h{i});
        else
            h{i} = S{i-1}*W{i};
            S{i} = Sigmoide(h{i});
        end
    end
end

