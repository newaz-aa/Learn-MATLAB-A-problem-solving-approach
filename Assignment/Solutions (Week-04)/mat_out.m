function y = mat_out(mat, a,str)


% when remainder is zero i.e.  size matches

[s1,s2] = size(mat);

y=zeros(s1/a,s2/a);

m=1;

% for string comparison, always use isequal or similar functions. dont use ==

if isequal(str,'max')
    for i=1:a:s1
        n=1;
        for j=1:a:s2
            x=mat(i:i+a-1,j:j+a-1);
            y(m,n)=max(x,[],'all');
            n=n+1;
        end
        m=m+1;
    end
elseif isequal(str,'min')
    for i=1:a:s1
        n=1;
        for j=1:a:s2
            x=mat(i:i+a-1,j:j+a-1);
            y(m,n)=min(x,[],'all');
            n=n+1;
        end
        m=m+1;
    end
elseif isequal(str,'mean')
    for i=1:a:s1
        n=1;
        for j=1:a:s2
            x=mat(i:i+a-1,j:j+a-1);
            y(m,n)=mean(x,'all');
            n=n+1;
        end
        m=m+1;
    end
end

end