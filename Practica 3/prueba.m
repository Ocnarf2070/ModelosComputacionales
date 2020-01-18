clear all
x=2;y=3;z=2;r=2;
num=0;
a1=zeros(x,y,z,r);
for k=1:z
    for l=1:r
        for j=1:y
            for i=1:x
                num=num+1;
                a1(i,j,k,l)=num;
            end
        end
    end
end
x2=3;y2=2;z2=2;r2=2;
num=0;
a2=zeros(x2,y2,z2,r2);
for l=1:r2
    for k=1:z2
        for i=1:x2
            for j=1:y2
                num=num+1;
                a2(i,j,k,l)=num;
            end
        end
    end
end
xp=min(x,x2);
yp=min(y,y2);
zp=min(z,z2);
rp=min(r,r2);
c=zeros(xp,yp,zp,rp);
z=(size(a2));
for l=1:rp
    for k=1:zp
        for j=1:yp
            for i=1:xp
                for n=1:z(1)
                    c(i,j,k,l)=c(i,j,k,l)+a1(i,j,k,n)*a2(n,j,k,l);
                end
            end
        end
    end
end
                    

