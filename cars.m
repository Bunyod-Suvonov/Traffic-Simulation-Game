function cars(change, g, o, r, b8, a1, b4, a2, b1, a3, b5, a4, n_lr, n_rl, n_tb, n_bt, colors, p, plate_a, plate_b, plate_c, plate_d, plate_e, plate_f, plate_g, plate_h, plate_i, plate_j, plate_k, plate_l)
    axis([min(-20) max(20) min(-20) max(20)]);
    hold on
    t=0;
    c1=1;
    c2=2;
    c0=0;
    lost=0;

    %% Initiating the values

    % Dynamic x and y coordinates of cars:

    car_abc_y = (b8+0.9)/2-0.9;
    car_def_y = (b4-0.9)/2   ;
    car_g_y = 20;
    car_h_y = 23.5;
    car_i_y = 27;
    car_j_y = -22.5;
    car_k_y = -26;
    car_l_y = -29.5;

    car_a_x=-22.5;
    car_b_x=-26;
    car_c_x=-29.5;
    car_d_x=20;
    car_e_x=23.5;
    car_f_x=27;
    car_ghi_x=(b1+0.9)/2-0.9;
    car_jkl_x=(b5-0.9)/2;

    % Colors of cars:
    car_a_c = colors(1);
    car_b_c = colors(2);
    car_c_c = colors(3);
    car_d_c = colors(4);
    car_e_c = colors(5);
    car_f_c = colors(6);
    car_g_c = colors(7);
    car_h_c = colors(8);
    car_i_c = colors(9);
    car_j_c = colors(10);
    car_k_c = colors(11);
    car_l_c = colors(12);

    % Stop or no in red color:

    a_stop=0;
    b_stop=0;
    c_stop=0;
    d_stop=0;
    e_stop=0;
    f_stop=0;
    g_stop=0;
    h_stop=0;
    i_stop=0;
    j_stop=0;
    k_stop=0;
    l_stop=0;

    switch car_a_c
        case 1
            car_a_c = [0.6350 0.0780 0.1840];
        case 2
            car_a_c = [0.4660 0.6740 0.1880];
        case 3
            car_a_c = [0.4940 0.1840 0.5560];
        case 4
            car_a_c = [0.8500 0.3250 0.0980];
        otherwise
            car_a_c = [0 0.4470 0.7410];
    end
    switch car_b_c
        case 1
            car_b_c = [0.6350 0.0780 0.1840];
        case 2
            car_b_c = [0.4660 0.6740 0.1880];
        case 3
            car_b_c = [0.4940 0.1840 0.5560];
        case 4
            car_b_c = [0.8500 0.3250 0.0980];
        otherwise
            car_b_c = [0 0.4470 0.7410];
    end
    switch car_c_c
        case 1
            car_c_c = [0.6350 0.0780 0.1840];
        case 2
            car_c_c = [0.4660 0.6740 0.1880];
        case 3
            car_c_c = [0.4940 0.1840 0.5560];
        case 4
            car_c_c = [0.8500 0.3250 0.0980];
        otherwise
            car_c_c = [0 0.4470 0.7410];
    end
    switch car_d_c
        case 1
            car_d_c = [0.6350 0.0780 0.1840];
        case 2
            car_d_c = [0.4660 0.6740 0.1880];
        case 3
            car_d_c = [0.4940 0.1840 0.5560];
        case 4
            car_d_c = [0.8500 0.3250 0.0980];
        otherwise
            car_d_c = [0 0.4470 0.7410];
    end
    switch car_e_c
        case 1
            car_e_c = [0.6350 0.0780 0.1840];
        case 2
            car_e_c = [0.4660 0.6740 0.1880];
        case 3
            car_e_c = [0.4940 0.1840 0.5560];
        case 4
            car_e_c = [0.8500 0.3250 0.0980];
        otherwise
            car_e_c = [0 0.4470 0.7410];
    end
    switch car_f_c
        case 1
            car_f_c = [0.6350 0.0780 0.1840];
        case 2
            car_f_c = [0.4660 0.6740 0.1880];
        case 3
            car_f_c = [0.4940 0.1840 0.5560];
        case 4
            car_f_c = [0.8500 0.3250 0.0980];
        otherwise
            car_f_c = [0 0.4470 0.7410];
    end
    switch car_g_c
        case 1
            car_g_c = [0.6350 0.0780 0.1840];
        case 2
            car_g_c = [0.4660 0.6740 0.1880];
        case 3
            car_g_c = [0.4940 0.1840 0.5560];
        case 4
            car_g_c = [0.8500 0.3250 0.0980];
        otherwise
            car_g_c = [0 0.4470 0.7410];
    end
    switch car_h_c
        case 1
            car_h_c = [0.6350 0.0780 0.1840];
        case 2
            car_h_c = [0.4660 0.6740 0.1880];
        case 3
            car_h_c = [0.4940 0.1840 0.5560];
        case 4
            car_h_c = [0.8500 0.3250 0.0980];
        otherwise
            car_h_c = [0 0.4470 0.7410];
    end
    switch car_i_c
        case 1
            car_i_c = [0.6350 0.0780 0.1840];
        case 2
            car_i_c = [0.4660 0.6740 0.1880];
        case 3
            car_i_c = [0.4940 0.1840 0.5560];
        case 4
            car_i_c = [0.8500 0.3250 0.0980];
        otherwise
            car_i_c = [0 0.4470 0.7410];
    end
    switch car_j_c
        case 1
            car_j_c = [0.6350 0.0780 0.1840];
        case 2
            car_j_c = [0.4660 0.6740 0.1880];
        case 3
            car_j_c = [0.4940 0.1840 0.5560];
        case 4
            car_j_c = [0.8500 0.3250 0.0980];
        otherwise
            car_j_c = [0 0.4470 0.7410];
    end
    switch car_k_c
        case 1
            car_k_c = [0.6350 0.0780 0.1840];
        case 2
            car_k_c = [0.4660 0.6740 0.1880];
        case 3
            car_k_c = [0.4940 0.1840 0.5560];
        case 4
            car_k_c = [0.8500 0.3250 0.0980];
        otherwise
            car_k_c = [0 0.4470 0.7410];
    end
    switch car_l_c
        case 1
            car_l_c = [0.6350 0.0780 0.1840];
        case 2
            car_l_c = [0.4660 0.6740 0.1880];
        case 3
            car_l_c = [0.4940 0.1840 0.5560];
        case 4
            car_l_c = [0.8500 0.3250 0.0980];
        otherwise
            car_l_c = [0 0.4470 0.7410];
    end

    % Generate probability numbers for cars to decide whether they
    % should cross the road in red color or not from the input number p

    p_a = randi([1 10], 1);
    p_b = randi([1 10], 1);
    p_c = randi([1 10], 1);
    p_d = randi([1 10], 1);
    p_e = randi([1 10], 1);
    p_f = randi([1 10], 1);
    p_g = randi([1 10], 1);
    p_h = randi([1 10], 1);
    p_i = randi([1 10], 1);
    p_j = randi([1 10], 1);
    p_k = randi([1 10], 1);
    p_l = randi([1 10], 1);

    stop=(1.0-p)*10;
    no_stop=10-stop;

    if p_a<=no_stop
        a_stop=0;
    elseif p_a>no_stop
        a_stop=1;
    elseif p_b<=no_stop
        b_stop=0;
    elseif p_b>no_stop
        b_stop=1;
    elseif p_c<=no_stop
        c_stop=0;
    elseif p_c>no_stop
        c_stop=1;
    elseif p_d<=no_stop
        d_stop=0;
    elseif p_d>no_stop
        d_stop=1;
    elseif p_e<=no_stop
        e_stop=0;
    elseif p_e>no_stop
        e_stop=1;
    elseif p_f<=no_stop
        f_stop=0;
    elseif p_f>no_stop
        f_stop=1;
    elseif p_g<=no_stop
        g_stop=0;
    elseif p_g>no_stop
        g_stop=1;
    elseif p_h<=no_stop
        h_stop=0;
    elseif p_h>no_stop
        h_stop=1;
    elseif p_i<=no_stop
        i_stop=0;
    elseif p_i>no_stop
        i_stop=1;
    elseif p_j<=no_stop
        j_stop=0;
    elseif p_j>no_stop
        j_stop=1;
    elseif p_k<=no_stop
        k_stop=0;
    elseif p_k>no_stop
        k_stop=1;
    elseif p_l<=no_stop
        l_stop=0;
    elseif p_l>no_stop
        l_stop=1;
    end






    %% Main


    for i = linspace(1, 1, 10000)
        tic;

        %% Traffic lights
        
        % Each 4 colors mean 1 cycle, e.g. r+o+g+o
        
        % For NW and SE lights:

        if t>=0 && t<r
            l1_status = 1;
            color_nw_se(c1, change)            
        elseif t>=r && t<(r+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o) && t<(r+o+g)
            l1_status = 2;
            color_nw_se(c2, change)
        elseif t>=(r+o+g) && t<(r+o+g+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o) && t<(r+o+g+o+r)
            l1_status = 1;
            color_nw_se(c1, change)
        elseif t>=(r+o+g+o+r) && t<(r+o+g+o+r+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o+r+o) && t<(r+o+g+o+r+o+g)
            l1_status = 2;
            color_nw_se(c2, change)
        elseif t>=(r+o+g+o+r+o+g) && t<(r+o+g+o+r+o+g+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o+r+o+g+o) && t<(r+o+g+o+r+o+g+o+r)
            l1_status = 1;
            color_nw_se(c1, change)
        elseif t>=(r+o+g+o+r+o+g+o+r) && t<(r+o+g+o+r+o+g+o+r+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o) && t<(r+o+g+o+r+o+g+o+r+o+g)
            l1_status = 2;
            color_nw_se(c2, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g) && t<(r+o+g+o+r+o+g+o+r+o+g+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g+o) && t<(r+o+g+o+r+o+g+o+r+o+g+o+r)
            l1_status = 1;
            color_nw_se(c1, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g+o+r) && t<(r+o+g+o+r+o+g+o+r+o+g+o+r+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g+o+r+o) && t<(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g)
            l1_status = 2;
            color_nw_se(c2, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g) && t<(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o) && t<(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r)
            l1_status = 1;
            color_nw_se(c1, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r) && t<(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o)
            l1_status = 0;
            color_nw_se(c0, change)
        elseif t>=(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o) && t<(r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g)
            l1_status = 2;
            color_nw_se(c2, change)
        end
        

        % For NE and SW lights:

        if t>=0 && t<g
            l2_status = 2;
            color_ne_sw(c2, change)
        elseif t>=g && t<(g+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o) && t<(g+o+r)
            l2_status = 1;
            color_ne_sw(c1, change)
        elseif t>=(g+o+r) && t<(g+o+r+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o) && t<(g+o+r+o+g)
            l2_status = 2;
            color_ne_sw(c2, change)
        elseif t>=(g+o+r+o+g) && t<(g+o+r+o+g+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o+g+o) && t<(g+o+r+o+g+o+r)
            l2_status = 1;
            color_ne_sw(c1, change)
        elseif t>=(g+o+r+o+g+o+r) && t<(g+o+r+o+g+o+r+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o+g+o+r+o) && t<(g+o+r+o+g+o+r+o+g)
            l2_status = 2;
            color_ne_sw(c2, change)
        elseif t>=(g+o+r+o+g+o+r+o+g) && t<(g+o+r+o+g+o+r+o+g+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o) && t<(g+o+r+o+g+o+r+o+g+o+r)
            l2_status = 1;
            color_ne_sw(c1, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r) && t<(g+o+r+o+g+o+r+o+g+o+r+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g)
            l2_status = 2;
            color_ne_sw(c2, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o+g) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o+g+o) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r)
            l2_status = 1;
            color_ne_sw(c1, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g)
            l2_status = 2;
            color_ne_sw(c2, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r)
            l2_status = 1;
            color_ne_sw(c1, change)
        elseif t>=(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r) && t<(g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o+g+o+r+o)
            l2_status = 0;
            color_ne_sw(c0, change)
        end

        %% Implementing different cars.

        % Cars A, B and C come from left to right. Cars D, E and F come
        % from right to left. Cars G, H and I come from top to bottom. Cars
        % J, K and L come from bottom to top.

        % Move the car from left to right:

        % If there are 1 car, 2 cars or 3 cars on the road. Same method is
        % used for all cars in different directions:

        % When cars reach the traffic light, it decides to whether keep
        % moving or stop using probability p

        light_a = l2_status;
        light_b = l2_status;
        light_c = l2_status;
        light_d = l2_status;
        light_e = l2_status;
        light_f = l2_status;
        light_g = l1_status;
        light_h = l1_status;
        light_i = l1_status;
        light_j = l1_status;
        light_k = l1_status;
        light_l = l1_status;

        


        if n_lr == 1
            
            car_a = rectangle('Position', [car_a_x car_abc_y 2.5 0.9], 'FaceColor', car_a_c, 'EdgeColor', car_a_c);
       
            if car_a_x<=(a1-2.5)
                car_a_x=car_a_x+0.1;
            elseif light_a == 2 || a_stop ==0
                car_a_x=car_a_x+0.1;
            elseif car_a_x>=(a1-2.4) && car_a_x<=21
                car_a_x=car_a_x+0.1;
            end

        elseif n_lr == 2

            car_a = rectangle('Position', [car_a_x car_abc_y 2.5 0.9], 'FaceColor', car_a_c, 'EdgeColor', car_a_c);

            if car_a_x<=(a1-2.5)
                car_a_x=car_a_x+0.1;
            elseif light_a == 2
                car_a_x=car_a_x+0.1;
            elseif car_a_x>=(a1-2.4) && car_a_x<=21
                car_a_x=car_a_x+0.1;
            end


            car_b = rectangle('Position', [car_b_x car_abc_y 2.5 0.9], 'FaceColor', car_b_c, 'EdgeColor', car_b_c);

            if car_b_x<=(a1-6)
                car_b_x=car_b_x+0.1;
            elseif light_b == 2 && car_b_x<=(a1-5.9)
                car_b_x=car_b_x+0.1;
            elseif car_b_x>=(a1-5.9) && car_b_x<=(a1-2.5)
                car_b_x=car_b_x+0.1;
            elseif light_b == 2
                car_b_x=car_b_x+0.1;
            elseif car_b_x>=(a1-2.4) && car_b_x<=21
                car_b_x=car_b_x+0.1;
            end

        elseif n_lr == 3
            
            car_a = rectangle('Position', [car_a_x car_abc_y 2.5 0.9], 'FaceColor', car_a_c, 'EdgeColor', car_a_c);

            if car_a_x<=(a1-2.5)
                car_a_x=car_a_x+0.1;
            elseif light_a == 2 || a_stop == 0
                car_a_x=car_a_x+0.1;
            elseif car_a_x>=(a1-2.4) && car_a_x<=21
                car_a_x=car_a_x+0.1;
            end


            car_b = rectangle('Position', [car_b_x car_abc_y 2.5 0.9], 'FaceColor', car_b_c, 'EdgeColor', car_b_c);

            if car_b_x<=(a1-6)
                car_b_x=car_b_x+0.1;
            elseif light_b == 2 && car_b_x<=(a1-5.9)
                car_b_x=car_b_x+0.1;
            elseif car_b_x>=(a1-5.9) && car_b_x<=(a1-2.5)
                car_b_x=car_b_x+0.1;
            elseif light_b == 2
                car_b_x=car_b_x+0.1;
            elseif car_b_x>=(a1-2.4) && car_b_x<=21
                car_b_x=car_b_x+0.1;
            end


            car_c = rectangle('Position', [car_c_x car_abc_y 2.5 0.9], 'FaceColor', car_c_c, 'EdgeColor', car_c_c);

            if car_c_x<=(a1-9.5)
                car_c_x=car_c_x+0.1;
            elseif light_c == 2 && car_c_x<=(a1-9.4)
                car_c_x=car_c_x+0.1;
            elseif car_c_x>=(a1-9.4) && car_c_x <= (a1-6)
                car_c_x=car_c_x+0.1;
            elseif light_c == 2 && car_c_x <=(a1-5.9)
                car_c_x=car_c_x+0.1;
            elseif car_c_x>=(a1-5.9) && car_c_x<=(a1-2.5)
                car_c_x=car_c_x+0.1;
            elseif light_c == 2
                car_c_x=car_c_x+0.1;
            elseif car_c_x>=(a1-2.4) && car_c_x<=21
                car_c_x=car_c_x+0.1;
            end

        end
        
        % Move the car from right to left:

        if n_rl == 1
            
            car_d = rectangle('Position', [car_d_x car_def_y 2.5 0.9], 'FaceColor', car_d_c, 'EdgeColor', car_d_c);

            if car_d_x>=(a2)
                car_d_x=car_d_x-0.1;
            elseif light_d == 2 || d_stop == 0
                car_d_x=car_d_x-0.1;
            elseif car_d_x<=(a2-0.2) && car_d_x>=-20
                car_d_x=car_d_x-0.1;
            end

        elseif n_rl == 2

            car_d = rectangle('Position', [car_d_x car_def_y 2.5 0.9], 'FaceColor', car_d_c, 'EdgeColor', car_d_c);

            if car_d_x>=(a2)
                car_d_x=car_d_x-0.1;
            elseif light_d == 2 || d_stop == 0
                car_d_x=car_d_x-0.1;
            elseif car_d_x<=(a2-0.2) && car_d_x>=-20
                car_d_x=car_d_x-0.1;
            end

            car_e = rectangle('Position', [car_e_x car_def_y 2.5 0.9], 'FaceColor', car_e_c, 'EdgeColor', car_e_c);

            if car_e_x>=(a2+3.5)
                car_e_x=car_e_x-0.1;
            elseif light_e == 2 && car_e_x>=(a2+3.4)
                car_e_x=car_e_x-0.1;
            elseif car_e_x<=(a2+3.3) && car_e_x>=(a2)
                car_e_x=car_e_x-0.1;
            elseif light_e == 2 || e_stop == 0
                car_e_x=car_e_x-0.1;
            elseif car_e_x<=(a2-0.2) && car_e_x>=-20
                car_e_x=car_e_x-0.1;
            end

        elseif n_rl == 3

            car_d = rectangle('Position', [car_d_x car_def_y 2.5 0.9], 'FaceColor', car_d_c, 'EdgeColor', car_d_c);

            if car_d_x>=(a2)
                car_d_x=car_d_x-0.1;
            elseif light_d == 2 || d_stop == 0
                car_d_x=car_d_x-0.1;
            elseif car_d_x<=(a2-0.2) && car_d_x>=-20
                car_d_x=car_d_x-0.1;
            end

            car_e = rectangle('Position', [car_e_x car_def_y 2.5 0.9], 'FaceColor', car_e_c, 'EdgeColor', car_e_c);

            if car_e_x>=(a2+3.5)
                car_e_x=car_e_x-0.1;
            elseif light_e == 2 && car_e_x>=(a2+3.4)
                car_e_x=car_e_x-0.1;
            elseif car_e_x<=(a2+3.3) && car_e_x>=(a2)
                car_e_x=car_e_x-0.1;
            elseif light_e == 2 || e_stop == 0
                car_e_x=car_e_x-0.1;
            elseif car_e_x<=(a2-0.2) && car_e_x>=-20
                car_e_x=car_e_x-0.1;
            end

            car_f = rectangle('Position', [car_f_x car_def_y 2.5 0.9], 'FaceColor', car_f_c, 'EdgeColor', car_f_c);

            if car_f_x>=(a2+7)
                car_f_x=car_f_x-0.1;
            elseif light_f == 2 && car_f_x>=(a2+6.9)
                car_f_x=car_f_x-0.1;
            elseif car_f_x<=(a2+6.8) && car_f_x>=(a2+3.5)
                car_f_x=car_f_x-0.1;
            elseif light_f == 2 && car_f_x>=(3.4)
                car_f_x=car_f_x-0.1;
            elseif car_f_x<=(a2+3.3) && car_f_x>=(a2)
                car_f_x=car_f_x-0.1;
            elseif light_f == 2 || f_stop == 0
                car_f_x=car_f_x-0.1;
            elseif car_f_x<=(a2-0.2) && car_f_x>=-20
                car_f_x=car_f_x-0.1;
            end


        end

        % Move the car from top to bottom:

        if n_tb == 1

            car_g = rectangle('Position', [car_ghi_x car_g_y 0.9 2.5], 'FaceColor', car_g_c, 'EdgeColor', car_g_c);

            if car_g_y>=(a3)
                car_g_y=car_g_y-0.1;
            elseif light_g == 2 || g_stop == 0
                car_g_y=car_g_y-0.1;
            elseif car_g_y<=(a3-0.2) && car_g_y>=-23.5
                car_g_y=car_g_y-0.1;
            end

        elseif n_tb == 2
            
            car_g = rectangle('Position', [car_ghi_x car_g_y 0.9 2.5], 'FaceColor', car_g_c, 'EdgeColor', car_g_c);

            if car_g_y>=(a3)
                car_g_y=car_g_y-0.1;
            elseif light_g == 2 || g_stop == 0
                car_g_y=car_g_y-0.1;
            elseif car_g_y<=(a3-0.2) && car_g_y>=-23.5
                car_g_y=car_g_y-0.1;
            end


            car_h = rectangle('Position', [car_ghi_x car_h_y 0.9 2.5], 'FaceColor', car_h_c, 'EdgeColor', car_h_c);

            if car_h_y>=(a3+3.5)
                car_h_y=car_h_y-0.1;
            elseif light_h == 2 && car_h_y>=(a3+3.4)
                car_h_y=car_h_y-0.1;
            elseif car_h_y<=(a3+3.3) && car_h_y>=(a3)
                car_h_y=car_h_y-0.1;
            elseif light_h == 2 || h_stop == 0
                car_h_y=car_h_y-0.1;
            elseif car_h_y<=(a3-0.2) && car_h_y>=-23.5
                car_h_y=car_h_y-0.1;
            end

        elseif n_tb == 3

            car_g = rectangle('Position', [car_ghi_x car_g_y 0.9 2.5], 'FaceColor', car_g_c, 'EdgeColor', car_g_c);

            if car_g_y>=(a3)
                car_g_y=car_g_y-0.1;
            elseif light_g == 2 || g_stop == 0
                car_g_y=car_g_y-0.1;
            elseif car_g_y<=(a3-0.2) && car_g_y>=-23.5
                car_g_y=car_g_y-0.1;
            end


            car_h = rectangle('Position', [car_ghi_x car_h_y 0.9 2.5], 'FaceColor', car_h_c, 'EdgeColor', car_h_c);

            if car_h_y>=(a3+3.5)
                car_h_y=car_h_y-0.1;
            elseif light_h == 2 && car_h_y>=(a3+3.4)
                car_h_y=car_h_y-0.1;
            elseif car_h_y<=(a3+3.3) && car_h_y>=(a3)
                car_h_y=car_h_y-0.1;
            elseif light_h == 2 || h_stop == 0
                car_h_y=car_h_y-0.1;
            elseif car_h_y<=(a3-0.2) && car_h_y>=-23.5
                car_h_y=car_h_y-0.1;
            end

            car_i = rectangle('Position', [car_ghi_x car_i_y 0.9 2.5], 'FaceColor', car_i_c, 'EdgeColor', car_i_c);

            if car_i_y>=(a3+7)
                car_i_y=car_i_y-0.1;
            elseif light_i == 2 && car_i_y>=(a3+6.9)
                car_i_y=car_i_y-0.1;
            elseif car_i_y<=(a3+6.8) && car_i_y>=(a3+3.5)
                car_i_y=car_i_y-0.1;
            elseif light_i == 2 && car_i_y>=(a3+3.4)
                car_i_y=car_i_y-0.1;
            elseif car_i_y<=(a3+3.3) && car_i_y>=(a3)
                car_i_y=car_i_y-0.1;
            elseif light_i == 2 || i_stop == 0
                car_i_y=car_i_y-0.1;
            elseif car_i_y<=(a3-0.2) && car_i_y>=-23.5
                car_i_y=car_i_y-0.1;
            end


        end
        
        % Move cars from bottom to top:

        if n_bt == 1
            
            car_j = rectangle('Position', [car_jkl_x car_j_y 0.9 2.5], 'FaceColor', car_j_c, 'EdgeColor', car_j_c);

            if car_j_y<=(a4-2.5)
                car_j_y=car_j_y+0.1;
            elseif light_j == 2 || j_stop == 0
                car_j_y=car_j_y+0.1;
            elseif car_j_y>=(a4-2.4) && car_j_y<=21
                car_j_y=car_j_y+0.1;
            end

        elseif n_bt == 2

            car_j = rectangle('Position', [car_jkl_x car_j_y 0.9 2.5], 'FaceColor', car_j_c, 'EdgeColor', car_j_c);

            if car_j_y<=(a4-2.5)
                car_j_y=car_j_y+0.1;
            elseif light_j == 2 || j_stop == 0
                car_j_y=car_j_y+0.1;
            elseif car_j_y>=(a4-2.4) && car_j_y<=21
                car_j_y=car_j_y+0.1;
            end

            car_k = rectangle('Position', [car_jkl_x car_k_y 0.9 2.5], 'FaceColor', car_k_c, 'EdgeColor', car_k_c);

            if car_k_y<=(a4-6)
                car_k_y=car_k_y+0.1;
            elseif light_k == 2 && car_k_y<=(a4-5.9)
                car_k_y=car_k_y+0.1;
            elseif car_k_y>=(a4-5.9) && car_k_y<=(a4-2.5)
                car_k_y=car_k_y+0.1;
            elseif light_k == 2 || k_stop == 0
                car_k_y=car_k_y+0.1;
            elseif car_k_y>=(a4-2.4) && car_k_y<=21
                car_k_y=car_k_y+0.1;
            end

        elseif n_bt == 3

            car_j = rectangle('Position', [car_jkl_x car_j_y 0.9 2.5], 'FaceColor', car_j_c, 'EdgeColor', car_j_c);

            if car_j_y<=(a4-2.5)
                car_j_y=car_j_y+0.1;
            elseif light_j == 2 || j_stop == 0
                car_j_y=car_j_y+0.1;
            elseif car_j_y>=(a4-2.4) && car_j_y <=21
                car_j_y=car_j_y+0.1;
            end

            car_k = rectangle('Position', [car_jkl_x car_k_y 0.9 2.5], 'FaceColor', car_k_c, 'EdgeColor', car_k_c);

            if car_k_y<=(a4-6)
                car_k_y=car_k_y+0.1;
            elseif light_k == 2 && car_k_y<=(a4-5.9)
                car_k_y=car_k_y+0.1;
            elseif car_k_y>=(a4-5.9) && car_k_y<=(a4-2.5)
                car_k_y=car_k_y+0.1;
            elseif light_k == 2 || k_stop == 0
                car_k_y=car_k_y+0.1;
            elseif car_k_y>=(a4-2.3) && car_k_y <=21
                car_k_y=car_k_y+0.1;
            end

            car_l = rectangle('Position', [car_jkl_x car_l_y 0.9 2.5], 'FaceColor', car_l_c, 'EdgeColor', car_l_c);

            if car_l_y<=(a4-9.5)
                car_l_y=car_l_y+0.1;
            elseif light_l == 2 && car_l_y<=(a4-9.4)
                car_l_y=car_l_y+0.1;
            elseif car_l_y>=(a4-9.4) && car_l_y<=(a4-6)
                car_l_y=car_l_y+0.1;
            elseif light_l == 2 && car_l_y<=(a4-5.9)
                car_l_y=car_l_y+0.1;
            elseif car_l_y>=(a4-5.9) && car_l_y<=(a4-2.5)
                car_l_y=car_l_y+0.1;
            elseif light_l == 2 || l_stop == 0
                car_l_y=car_l_y+0.1;
            elseif car_l_y>=(a4-2.3) && car_l_y<=21
                car_l_y=car_l_y+0.1;
            end
            end
        

        %% For losing or winning


        % Car A hitting other cars from side:

        if car_a_x+2.5 > car_jkl_x && car_a_x < car_jkl_x +0.9 && car_abc_y > car_j_y - 0.9 && car_abc_y < car_j_y + 2.5
            lost=1;            
        elseif car_a_x+2.5 > car_jkl_x && car_a_x < car_jkl_x + 0.9 && car_abc_y > car_k_y - 0.9 && car_abc_y < car_k_y + 2.5
            lost=1;            
        elseif car_a_x+2.5 > car_jkl_x && car_a_x < car_jkl_x + 0.9 && car_abc_y > car_l_y - 0.9 && car_abc_y < car_l_y + 2.5
            lost=1;
        elseif car_a_x+2.5 > car_ghi_x && car_a_x < car_ghi_x + 0.9 && car_abc_y > car_g_y - 0.9 && car_abc_y < car_g_y + 2.5
            lost=1;            
        elseif car_a_x+2.5 > car_ghi_x && car_a_x < car_ghi_x + 0.9 && car_abc_y > car_h_y - 0.9 && car_abc_y < car_h_y + 2.5
            lost=1;
        elseif car_a_x+2.5 > car_ghi_x && car_a_x < car_ghi_x + 0.9 && car_abc_y > car_i_y - 0.9 && car_abc_y < car_i_y + 2.5
            lost=1;

            % Car B hitting other cars from side:

        elseif car_b_x+2.5 > car_jkl_x && car_b_x < car_jkl_x +0.9 && car_abc_y > car_j_y - 0.9 && car_abc_y < car_j_y + 2.5
            lost=1;            
        elseif car_b_x+2.5 > car_jkl_x && car_b_x < car_jkl_x + 0.9 && car_abc_y > car_k_y - 0.9 && car_abc_y < car_k_y + 2.5
            lost=1;            
        elseif car_b_x+2.5 > car_jkl_x && car_b_x < car_jkl_x + 0.9 && car_abc_y > car_l_y - 0.9 && car_abc_y < car_l_y + 2.5
            lost=1;
        elseif car_b_x+2.5 > car_ghi_x && car_b_x < car_ghi_x + 0.9 && car_abc_y > car_g_y - 0.9 && car_abc_y < car_g_y + 2.5
            lost=1;            
        elseif car_b_x+2.5 > car_ghi_x && car_b_x < car_ghi_x + 0.9 && car_abc_y > car_h_y - 0.9 && car_abc_y < car_h_y + 2.5
            lost=1;
        elseif car_b_x+2.5 > car_ghi_x && car_b_x < car_ghi_x + 0.9 && car_abc_y > car_i_y - 0.9 && car_abc_y < car_i_y + 2.5
            lost=1;

            % Car C hitting other cars from side:

        elseif car_c_x+2.5 > car_jkl_x && car_c_x < car_jkl_x +0.9 && car_abc_y > car_j_y - 0.9 && car_abc_y < car_j_y + 2.5
            lost=1;            
        elseif car_c_x+2.5 > car_jkl_x && car_c_x < car_jkl_x + 0.9 && car_abc_y > car_k_y - 0.9 && car_abc_y < car_k_y + 2.5
            lost=1;            
        elseif car_c_x+2.5 > car_jkl_x && car_c_x < car_jkl_x + 0.9 && car_abc_y > car_l_y - 0.9 && car_abc_y < car_l_y + 2.5
            lost=1;
        elseif car_c_x+2.5 > car_ghi_x && car_c_x < car_ghi_x + 0.9 && car_abc_y > car_g_y - 0.9 && car_abc_y < car_g_y + 2.5
            lost=1;            
        elseif car_c_x+2.5 > car_ghi_x && car_c_x < car_ghi_x + 0.9 && car_abc_y > car_h_y - 0.9 && car_abc_y < car_h_y + 2.5
            lost=1;
        elseif car_c_x+2.5 > car_ghi_x && car_c_x < car_ghi_x + 0.9 && car_abc_y > car_i_y - 0.9 && car_abc_y < car_i_y + 2.5
            lost=1;

            % Car J hitting other cars from side:

        elseif car_jkl_x < car_a_x + 2.5 && car_jkl_x > car_a_x - 0.9 && car_j_y + 2.5 > car_abc_y && car_j_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x < car_b_x + 2.5 && car_jkl_x > car_b_x - 0.9 && car_j_y + 2.5 > car_abc_y && car_j_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x < car_c_x + 2.5 && car_jkl_x > car_c_x - 0.9 && car_j_y + 2.5 > car_abc_y && car_j_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x > car_d_x - 0.9 && car_jkl_x < car_d_x + 2.5 && car_j_y + 2.5 > car_def_y && car_j_y + 2.5 < car_def_y + 0.9
            lost=1;
        elseif car_jkl_x > car_e_x - 0.9 && car_jkl_x < car_e_x + 2.5 && car_j_y + 2.5 > car_def_y && car_j_y + 2.5 < car_def_y + 0.9
            lost=1;
        elseif car_jkl_x > car_f_x - 0.9 && car_jkl_x < car_f_x + 2.5 && car_j_y + 2.5 > car_def_y && car_j_y + 2.5 < car_def_y + 0.9
            lost=1;

            % Car K hitting other cars from side:

        elseif car_jkl_x < car_a_x + 2.5 && car_jkl_x > car_a_x - 0.9 && car_k_y + 2.5 > car_abc_y && car_k_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x < car_b_x + 2.5 && car_jkl_x > car_b_x - 0.9 && car_k_y + 2.5 > car_abc_y && car_k_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x < car_c_x + 2.5 && car_jkl_x > car_c_x - 0.9 && car_k_y + 2.5 > car_abc_y && car_k_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x > car_d_x - 0.9 && car_jkl_x < car_d_x + 2.5 && car_k_y + 2.5 > car_def_y && car_k_y + 2.5 < car_def_y + 0.9
            lost=1;
        elseif car_jkl_x > car_e_x - 0.9 && car_jkl_x < car_e_x + 2.5 && car_k_y + 2.5 > car_def_y && car_k_y + 2.5 < car_def_y + 0.9
            lost=1;
        elseif car_jkl_x > car_f_x - 0.9 && car_jkl_x < car_f_x + 2.5 && car_k_y + 2.5 > car_def_y && car_k_y + 2.5 < car_def_y + 0.9
            lost=1;

            % Car L hitting other cars from side:

        elseif car_jkl_x < car_a_x + 2.5 && car_jkl_x > car_a_x - 0.9 && car_l_y + 2.5 > car_abc_y && car_l_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x < car_b_x + 2.5 && car_jkl_x > car_b_x - 0.9 && car_l_y + 2.5 > car_abc_y && car_l_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x < car_c_x + 2.5 && car_jkl_x > car_c_x - 0.9 && car_l_y + 2.5 > car_abc_y && car_l_y + 2.5 < car_abc_y + 0.9
            lost=1;
        elseif car_jkl_x > car_d_x - 0.9 && car_jkl_x < car_d_x + 2.5 && car_l_y + 2.5 > car_def_y && car_l_y + 2.5 < car_def_y + 0.9
            lost=1;
        elseif car_jkl_x > car_e_x - 0.9 && car_jkl_x < car_e_x + 2.5 && car_l_y + 2.5 > car_def_y && car_l_y + 2.5 < car_def_y + 0.9
            lost=1;
        elseif car_jkl_x > car_f_x - 0.9 && car_jkl_x < car_f_x + 2.5 && car_l_y + 2.5 > car_def_y && car_l_y + 2.5 < car_def_y + 0.9
            lost=1;

            % Car D hitting other cars from side:

        elseif car_d_x < car_jkl_x + 0.9 && car_d_x > car_jkl_x && car_def_y < car_j_y + 2.5 && car_def_y > car_j_y - 0.9
            lost=1;
        elseif car_d_x < car_jkl_x + 0.9 && car_d_x > car_jkl_x && car_def_y < car_k_y + 2.5 && car_def_y > car_k_y - 0.9
            lost=1;
        elseif car_d_x < car_jkl_x + 0.9 && car_d_x > car_jkl_x && car_def_y < car_l_y + 2.5 && car_def_y > car_l_y + 0.9
            lost=1;
        elseif car_d_x < car_ghi_x + 0.9 && car_d_x > car_ghi_x && car_def_y > car_g_y - 0.9 && car_def_y < car_g_y + 2.5
            lost=1;
        elseif car_d_x < car_ghi_x + 0.9 && car_d_x > car_ghi_x && car_def_y > car_h_y - 0.9 && car_def_y < car_h_y + 2.5
            lost=1;
        elseif car_d_x < car_ghi_x + 0.9 && car_d_x > car_ghi_x && car_def_y > car_i_y - 0.9 && car_def_y < car_i_y + 2.5
            lost=1;

            % Car E hitting other cars from side:

        elseif car_e_x < car_jkl_x + 0.9 && car_e_x > car_jkl_x && car_def_y < car_j_y + 2.5 && car_def_y > car_j_y - 0.9
            lost=1;
        elseif car_e_x < car_jkl_x + 0.9 && car_e_x > car_jkl_x && car_def_y < car_k_y + 2.5 && car_def_y > car_k_y - 0.9
            lost=1;
        elseif car_e_x < car_jkl_x + 0.9 && car_e_x > car_jkl_x && car_def_y < car_l_y + 2.5 && car_def_y > car_l_y + 0.9
            lost=1;
        elseif car_e_x < car_ghi_x + 0.9 && car_e_x > car_ghi_x && car_def_y > car_g_y - 0.9 && car_def_y < car_g_y + 2.5
            lost=1;
        elseif car_e_x < car_ghi_x + 0.9 && car_e_x > car_ghi_x && car_def_y > car_h_y - 0.9 && car_def_y < car_h_y + 2.5
            lost=1;
        elseif car_e_x < car_ghi_x + 0.9 && car_e_x > car_ghi_x && car_def_y > car_i_y - 0.9 && car_def_y < car_i_y + 2.5
            lost=1;

            % Car F hitting other cars from side:

        elseif car_f_x < car_jkl_x + 0.9 && car_f_x > car_jkl_x && car_def_y < car_j_y + 2.5 && car_def_y > car_j_y - 0.9
            lost=1;
        elseif car_f_x < car_jkl_x + 0.9 && car_f_x > car_jkl_x && car_def_y < car_k_y + 2.5 && car_def_y > car_k_y - 0.9
            lost=1;
        elseif car_f_x < car_jkl_x + 0.9 && car_f_x > car_jkl_x && car_def_y < car_l_y + 2.5 && car_def_y > car_l_y + 0.9
            lost=1;
        elseif car_f_x < car_ghi_x + 0.9 && car_f_x > car_ghi_x && car_def_y > car_g_y - 0.9 && car_def_y < car_g_y + 2.5
            lost=1;
        elseif car_f_x < car_ghi_x + 0.9 && car_f_x > car_ghi_x && car_def_y > car_h_y - 0.9 && car_def_y < car_h_y + 2.5
            lost=1;
        elseif car_f_x < car_ghi_x + 0.9 && car_f_x > car_ghi_x && car_def_y > car_i_y - 0.9 && car_def_y < car_i_y + 2.5
            lost=1;

            % Car G hitting other cars from side:

        elseif car_ghi_x < car_a_x + 2.5 && car_ghi_x > car_a_x - 0.9 && car_g_y < car_abc_y + 0.9 && car_g_y > car_abc_y
            lost=1;
        elseif car_ghi_x < car_b_x + 2.5 && car_ghi_x > car_b_x - 0.9 && car_g_y < car_abc_y + 0.9 && car_g_y > car_abc_y
            lost=1;
        elseif car_ghi_x < car_c_x + 2.5 && car_ghi_x > car_c_x - 0.9 && car_g_y < car_abc_y + 0.9 && car_g_y > car_abc_y
            lost=1;
        elseif car_ghi_x > car_d_x - 0.9 && car_ghi_x < car_d_x + 2.5 && car_g_y < car_def_y + 0.9 && car_g_y > car_def_y
            lost=1;
        elseif car_ghi_x > car_e_x - 0.9 && car_ghi_x < car_e_x + 2.5 && car_g_y < car_def_y + 0.9 && car_g_y > car_def_y
            lost=1;
        elseif car_ghi_x > car_f_x - 0.9 && car_ghi_x < car_f_x + 2.5 && car_g_y < car_def_y + 0.9 && car_g_y > car_def_y
            lost=1; 

            % Car H hitting other cars from side:

        elseif car_ghi_x < car_a_x + 2.5 && car_ghi_x > car_a_x - 0.9 && car_h_y < car_abc_y + 0.9 && car_h_y > car_abc_y
            lost=1;
        elseif car_ghi_x < car_b_x + 2.5 && car_ghi_x > car_b_x - 0.9 && car_h_y < car_abc_y + 0.9 && car_h_y > car_abc_y
            lost=1;
        elseif car_ghi_x < car_c_x + 2.5 && car_ghi_x > car_c_x - 0.9 && car_h_y < car_abc_y + 0.9 && car_h_y > car_abc_y
            lost=1;
        elseif car_ghi_x > car_d_x - 0.9 && car_ghi_x < car_d_x + 2.5 && car_h_y < car_def_y + 0.9 && car_h_y > car_def_y
            lost=1;
        elseif car_ghi_x > car_e_x - 0.9 && car_ghi_x < car_e_x + 2.5 && car_h_y < car_def_y + 0.9 && car_h_y > car_def_y
            lost=1;
        elseif car_ghi_x > car_f_x - 0.9 && car_ghi_x < car_f_x + 2.5 && car_h_y < car_def_y + 0.9 && car_h_y > car_def_y
            lost=1;

            % Car I hitting other cars from side:

        elseif car_ghi_x < car_a_x + 2.5 && car_ghi_x > car_a_x - 0.9 && car_i_y < car_abc_y + 0.9 && car_i_y > car_abc_y
            lost=1;
        elseif car_ghi_x < car_b_x + 2.5 && car_ghi_x > car_b_x - 0.9 && car_i_y < car_abc_y + 0.9 && car_i_y > car_abc_y
            lost=1;
        elseif car_ghi_x < car_c_x + 2.5 && car_ghi_x > car_c_x - 0.9 && car_i_y < car_abc_y + 0.9 && car_i_y > car_abc_y
            lost=1;
        elseif car_ghi_x > car_d_x - 0.9 && car_ghi_x < car_d_x + 2.5 && car_i_y < car_def_y + 0.9 && car_i_y > car_def_y
            lost=1;
        elseif car_ghi_x > car_e_x - 0.9 && car_ghi_x < car_e_x + 2.5 && car_i_y < car_def_y + 0.9 && car_i_y > car_def_y
            lost=1;
        elseif car_ghi_x > car_f_x - 0.9 && car_ghi_x < car_f_x + 2.5 && car_i_y < car_def_y + 0.9 && car_i_y > car_def_y
            lost=1;

        end

      

        if lost==1
            break
        end

        








        %% Pause and other necessary things

        pause(0.05)

        if n_lr==1
            delete(car_a)
        elseif n_lr==2
            delete(car_a)
            delete(car_b)
        elseif n_lr==3
            delete(car_a)
            delete(car_b)
            delete(car_c)
        end

        if n_rl==1
            delete(car_d)
        elseif n_rl==2
            delete(car_d)
            delete(car_e)
        elseif n_rl==3
            delete(car_d)
            delete(car_e)
            delete(car_f)
        end
        
        if n_tb==1
            delete(car_g)
        elseif n_tb==2
            delete(car_g)
            delete(car_h)
        elseif n_tb==3
            delete(car_g)
            delete(car_h)
            delete(car_i)
        end
        if n_bt==1
            delete(car_j)
        elseif n_bt==2
            delete(car_j)
            delete(car_k)
        elseif n_bt==3
            delete(car_j)
            delete(car_k)
            delete(car_l)
        end

        toc;
        t=t+toc;




    end

    if lost ==1
        disp("You lost!")
        disp("Cars that crossed the crossroad in other lights: ")
    if a_stop == 0
        disp(plate_a)
    end
    if b_stop == 0
        disp(plate_b)
    end
    if c_stop == 0
        disp(plate_c)
    end
    if d_stop == 0
        disp(plate_d)
    end
    if e_stop == 0
        disp(plate_e)
    end
    if f_stop == 0
        disp(plate_f)
    end
    if g_stop == 0
        disp(plate_g)
    end
    if h_stop == 0
        disp(plate_h)
    end
    if i_stop == 0
        disp(plate_i)
    end
    if j_stop == 0
        disp(plate_j)
    end
    if k_stop == 0
        disp(plate_k)
    end
    if l_stop == 0
        disp(plate_l)
    end
    elseif lost == 0
        disp("You win!")
    end
  
    

end