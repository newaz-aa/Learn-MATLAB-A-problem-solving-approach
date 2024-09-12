function out =exc_08(x)

out=[];

for i=1:2:length(x)
    
    a=x(i:i+1)
    %we want repeat 2nd element a(2) -- a(1) number of time
    
    out=[out,repmat(a(2),1,a(1))]
end

end


% it can also be done directly
% try this --- repelem([2,3],[1,5])

% out=repelem(x(2:2:end),x(1:2:end))