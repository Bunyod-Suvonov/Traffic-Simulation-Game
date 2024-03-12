function color_nw_se(c, change)

    if c == 1
        nw_se_color = [1 0 0];
    elseif c == 0
        nw_se_color = [0.9290 0.6940 0.1250];
    else
        nw_se_color = [0 1 0];
    end

    a1=-2.5-change; a2=1.5+change;
    nw_pos = [a1 a2 1 1];
    light_nw = rectangle('Position',nw_pos,'Curvature',[1 1],'FaceColor', nw_se_color, 'EdgeColor', nw_se_color);

    c1=1.5+change; c2=-2.5-change;
    se_pos = [c1 c2 1 1];
    light_se = rectangle('Position',se_pos,'Curvature',[1 1],'FaceColor',nw_se_color,'EdgeColor',nw_se_color);
    

    
end