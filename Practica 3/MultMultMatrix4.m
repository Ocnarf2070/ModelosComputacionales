function c=MultMultMatrix4(m1,m2)
[x y z r]=size(m1);
[x2 y2 z2 r2]=size(m2);
xp=min(x,x2);
yp=min(y,y2);
zp=min(z,z2);
rp=min(r,r2);
c=zeros(xp,yp,zp,rp);
z=(size(m2));
for l=1:rp
    for k=1:zp
        for j=1:yp
            for i=1:xp
                for n=1:z(1)
                    c(i,j,k,l)=c(i,j,k,l)+m1(i,j,k,n)*m2(n,j,k,l);
                end
            end
        end
    end
end
end