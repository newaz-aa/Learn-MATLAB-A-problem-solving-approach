function out = arith_op(varargin)

a=varargin{1};
b=varargin{2};

if nargin==2
    out=mod(a,b);
else
    c=varargin{3};
    if isequal(c,'add')
        out=a+b;
    %elseif -- add urself
        
    end
end
end