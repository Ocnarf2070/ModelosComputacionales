val=[pu0 pu1 pu2 pu3 pu4 pu5 pu6 pu7 pu8 pu9];
for i=1:10
    for j=i+1:10
        x=val(:,i);
        y=val(:,j);
        fprintf('pu%u y pu%u = %u  \t',i-1,j-1,sum(x.*y));
    end
    fprintf('\n');
end