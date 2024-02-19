function output = overlapAddConv(x, h, block_size)
    % x: input sequence
    % h: impulse response (filter)
    % block_size: size of each block for convolution
    
    M = length(h);  % Length of the filter
    L = length(x);  % Length of the input sequence
    N = block_size;  % Size of each block
    
    % Calculate the number of blocks required
    num_blocks = ceil(L/N);
    
    % Pad the filter and input sequence to ensure they have sufficient length
    h_padded = [h, zeros(1, N-1)];
    x_padded = [x, zeros(1, (num_blocks * N) - L)];
    
    output = zeros(1, L + M - 1);  % Initialize the output
    
    for i = 1:num_blocks
        % Extract a block from the input sequence
        x_block = x_padded((i-1)*N + 1 : i*N);
        
        % Convolve the block with the padded filter
        block_conv = conv(x_block, h_padded);
        
        % Add the convolution result to the appropriate location in the output
        start_index = (i-1)*N + 1;
        end_index = start_index + length(block_conv) - 1;
        output(start_index:end_index) = output(start_index:end_index) + block_conv;
    end
    
    % Trim the output to the correct length
    output = output(1:L + M - 1);
end
