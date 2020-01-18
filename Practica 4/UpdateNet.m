function W=UpdateNet(W,LR,Output,Target,Input)
    W=W+((Target-Output)*LR)*Input';
end

