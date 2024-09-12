function out= exc_06(x)

notes=[1000,500,100];

out=0;


for i=1:length(notes)
    n1=floor(x/notes(i))  % no of 'i' tk notes to be taken
    out=out+n1;
    
    r=mod(x,notes(i))   % remaining portion
    
    if r==0
        break;
    else
        x=r
    end
end

end