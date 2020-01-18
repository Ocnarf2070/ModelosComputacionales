clear all
close all

A=[ 0 1 0 1 1 0 0 0 0 0;
    1 0 1 1 0 0 0 0 0 0;
    0 1 0 1 0 0 1 0 0 0;
    1 1 1 0 0 0 1 1 0 0;
    1 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0;
    0 0 1 1 0 1 0 1 1 1;
    0 0 0 1 1 0 1 0 1 0;
    0 0 0 0 0 0 1 1 0 1;
    0 0 0 0 0 0 1 0 1 0];

% A=[ 0 1 1 0 0 1
%     1 0 1 0 1 0
%     1 1 0 1 0 0
%     0 0 1 0 1 1
%     0 1 0 1 0 1
%     1 0 0 1 1 0];
%A=ones(6,6)-diag(ones(1,6));
% A=[0 0 1 1 1 0
%    0 0 0 1 1 1
%    1 0 0 0 1 1
%    1 1 0 0 0 1
%    1 1 1 0 0 0
%    0 1 1 1 0 0];

G = graph(A);
g=plot(G);
landa=50;
N=length(A);
W=zeros(N,N);
%W
for i=1:N
    for j=1:N
        if i~=j
            W(i,j)=A(i,j)-2*landa;
        end
    end
end
S=ones(N,1);
S_n=simuhds(S,W,0);
S_n';
n=0;
for i=1:N
    if S_n(i)==1
        n=n+1;
        p(n)=i;
    end
end
highlight(g,p,'NodeColor','g')
