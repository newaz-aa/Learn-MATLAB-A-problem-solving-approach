function out=iccanobif(n)

icc=ones(1,n);   %pre-allocation

for i=3:n
    a=icc(i-1);
    b=icc(i-2);
    
    a2=num2str(a);
    b2=num2str(b);
    
    a3=flip(a2);
    b3=flip(b2);
    
    a4=str2double(a3);
    b4=str2double(b3);
    
    
    icc(i)=a4+b4;
    
end

icc
out=icc(end);
end
    

