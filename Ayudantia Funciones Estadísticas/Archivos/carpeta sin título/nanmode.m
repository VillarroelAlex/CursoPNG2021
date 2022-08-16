function mymode=nanmode(vec)
vec
indx=isnan(vec);
indx2=find(indx==1);
vec(indx2)=[];
vec
mymode=mode(vec);
end
