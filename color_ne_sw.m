function color_ne_sw(d, change)

    if d == 1
        ne_sw_color = [1 0 0];
    elseif d == 0
        ne_sw_color = [0.9290 0.6940 0.1250];
    else
        ne_sw_color = [0 1 0];
    end

    b1=1.5+change; b2=1.5+change;
    ne_pos = [b1 b2 1 1];
    light_ne = rectangle('Position',ne_pos,'Curvature',[1 1],'FaceColor',ne_sw_color,'EdgeColor',ne_sw_color);

    d1=-2.5-change; d2=-2.5-change;
    sw_pos = [d1 d2 1 1];
    light_sw = rectangle('Position',sw_pos,'Curvature',[1 1],'FaceColor',ne_sw_color,'EdgeColor',ne_sw_color);

    
end