A=randi(10,3,4);
%transformar a una 12x1
c=1;
[a,b]=size(A);
nueva=zeros(1,12);
for j=1:4
    for i=1:3
       nueva(1,c)=A(i,j);
       c=c+1;
    end
end
nueva=nueva';

%transformar a una 2x6
nueva2=zeros(2,6);
k=1;
for i=1:6
    for j=1:2
        nueva2(j,i)=nueva(k,1);
        k=k+1;
    end
end


