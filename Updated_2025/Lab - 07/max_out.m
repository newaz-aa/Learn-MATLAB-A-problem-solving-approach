function Out = max_out(Mat, a)
    [rows, cols] = size(Mat);
    
    new_rows = floor(rows / a);
    new_cols = floor(cols / a);
    
    Out = zeros(new_rows, new_cols);
    
    p = 1;
    for i = 1:a:rows
        q = 1;
        for j = 1:a:cols
            block = Mat(i:i+a-1, j:j+a-1);
            Out(p, q) = max(block(:));
            q = q + 1;
        end
        p = p + 1;
    end
end