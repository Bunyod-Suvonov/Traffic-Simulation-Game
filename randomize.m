function randomize(change, g, o, r, b8, a1, b4, a2, b1, a3, b5, a4, n, p)
    
total=0;

    %% Getting random number of cars for each lane:

    % last 2 letters indicate the direction (e.g. lr = left to right)

    while total ~= n
        n_lr = randi([1, 3], 1);
        n_rl = randi([1, 3], 1);
        n_tb = randi([1, 3], 1);
        n_bt = randi([1, 3], 1);
      

        total=n_lr+n_rl+n_tb+n_bt;
    end

    %% Getting random colours:

    % Get different colours to make them look like a sequence of
    % cars rather than a long train

    
    colors = randi([1, 5], 12);

    %% Randomizing plates:

    plate_a = randi([1 9], 1, 6);
    plate_b = randi([1 9], 1, 6);
    plate_c = randi([1 9], 1, 6);
    plate_d = randi([1 9], 1, 6);
    plate_e = randi([1 9], 1, 6);
    plate_f = randi([1 9], 1, 6);
    plate_g = randi([1 9], 1, 6);
    plate_h = randi([1 9], 1, 6);
    plate_i = randi([1 9], 1, 6);
    plate_j = randi([1 9], 1, 6);
    plate_k = randi([1 9], 1, 6);
    plate_l = randi([1 9], 1, 6);
    


    cars(change, g, o, r, b8, a1, b4, a2, b1, a3, b5, a4, n_lr, n_rl, n_tb, n_bt, colors, p, plate_a, plate_b, plate_c, plate_d, plate_e, plate_f, plate_g, plate_h, plate_i, plate_j, plate_k, plate_l)



end