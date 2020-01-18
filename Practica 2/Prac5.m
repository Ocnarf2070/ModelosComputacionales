val=[p0 p1 p2 p3 p4 p5 p6 p7 p8 p9];
for i=1:10
    for j=i+1:10
        x=val(:,i);
        y=val(:,j);
        fprintf('p%u y p%u = %u \t',i-1,j-1,sum(x.*y));
    end
    fprintf('\n');
end