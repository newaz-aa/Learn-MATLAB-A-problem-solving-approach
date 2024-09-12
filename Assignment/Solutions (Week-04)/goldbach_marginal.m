function out=goldbach_marginal(n)
if n>5
    p=primes(n);
    pl=length(p);
    
    for i=1:pl
        for j=1:pl
            for k=1:pl
                if p(i)+p(j)+p(k)==n
                    out=[p(i),p(j),p(k)];
                    return;
                end
            end
        end
    end
else
    out='...';
end
    
end