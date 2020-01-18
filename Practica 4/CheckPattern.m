function  c = CheckPattern(Data,W)
    ok=1;
    i=1;
    while i<=size(Data,1) && ok
        [~,Output,Target]=ValoresIOT(Data,W,i);
        if Output ~= Target
            ok=0;
        end
        i=i+1;
    end
    c=ok;
end

