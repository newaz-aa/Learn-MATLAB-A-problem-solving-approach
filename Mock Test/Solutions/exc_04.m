function [y1,y2,y3]= exc_04(str)

y1=extractBefore(str,'@');
y2=regexprep(str,'edu','com');
y3=extractBetween(str,'@','-');


%careful -- y3 returns cell
y3=y3{:};

end



