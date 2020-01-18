function Hs=CalculoHs(W,Patron)
        O = (1/2)*(sum(W.^2));
        Hs = Patron*W - O;
end

