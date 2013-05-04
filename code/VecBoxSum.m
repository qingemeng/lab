function b_vec = VecBoxSum(x, y, w, h, W, H)


    % Initialization
    a_vec = zeros(W, H);
    
    % Start with the big box from top left till x+w, y+w:
    a_vec(y + h - 1, x + w - 1) = 1;
    
    % Subtract the horizontal box above it:
    a_vec(y + h - 1, max(1, x - 1)) = -1;
    
    % Subtract the vertical box to the left:
    a_vec(max(1, y - 1), x + w - 1) = -1;
    
    % Re-add the box to the top-left:
    a_vec(max(1, y - 1), max(1, x - 1)) = 1;
    
    b_vec = a_vec(:);
end