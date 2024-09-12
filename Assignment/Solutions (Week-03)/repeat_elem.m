function out = repeat_elem(n)


out=[];
for i=1:n
    out=[out,repelem(i,1,i)];
end


end

