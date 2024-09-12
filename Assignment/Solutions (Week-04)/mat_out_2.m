function y = mat_out_2(mat, a,str)

% when remainder is not zero i.e.  size mis-match


[s1,s2] = size(mat);

y=zeros(ceil(s1/a),ceil(s2/a));

m=1;  % row index

% for string comparison, always use isequal or similar functions. dont use ==

if isequal(str,'max')
    for i=1:a:s1
        n=1;
        for j=1:a:s2
            
            % to consider the end row/column - we can use a try-catch block
            % if try statement gives a error, handle goes to catch
            % statement
            
            try 
                x=mat(i:i+a-1,j:j+a-1);
            catch
                if j+a-1>s2 && i+a-1>s1
                    x=mat(i:end,j:end);
                elseif i+a-1>s1
                    x=mat(i:end,j:j+a-1);
                else
                    x=mat(i:i+a-1,j:end);
                end
            end
            
            y(m,n)=max(x,[],'all');
            n=n+1;
        end
        m=m+1;
    end
    
    %rest is not modified.so trying to perform min is gonna generate an error
    % copy the above try-catch block here.. then it'll work
    
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