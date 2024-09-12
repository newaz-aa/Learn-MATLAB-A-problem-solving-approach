function out=lunar_add(a,b)

%1st convert to string
aa=num2str(a);
bb=num2str(b);

%see how much different in length
la=length(aa);
lb=length(bb);
dif=abs(la-lb);

%add zeros to make both equal size
if la>lb
    bb=append(repmat('0',1,dif),bb);
else
    aa=append(repmat('0',1,dif),aa);
end

aa
bb

% bsxfun performs the function between two arrays
% here i want to find max element between two array
% understand- bsxfun,arrayfun,cellfun -- they operate element wise

x=bsxfun(@max, aa, bb)

%ascii value is  returned; so convert to string first
xx=char(x)

%now convert back to number
out=str2double(xx);

end