function crossroad(unit, g, o, r, n, p)

axis([min(-20) max(20) min(-20) max(20)]);
hold on
grid on
axis equal

%% Create dashed lines:

change = (unit-4)/2;

% left dashed line
a1 = -2-change;
x_left = [-20 a1];
y_left = [0 0];
left = plot(x_left, y_left, 'k--');

% right dashed line
a2 = 2+change;
x_right = [a2 20];
y_right = [0 0];
right = plot(x_right, y_right, 'k--');

% top dashed line
a3 = 2+change;
x_top = [0 0];
y_top = [a3 20];
top = plot(x_top, y_top, 'k--');

% bottom dashed line
a4 = -2-change;
x_bottom = [0 0];
y_bottom = [a4 -20];
bottom = plot(x_bottom, y_bottom, 'k--');

%% Crossroad borders:
% variable names example: nw = north west

b1 = -2-change;
b2 = 2+change;
nw_x = [-20 b1 b1];
nw_y = [b2 b2 20];
nw = plot(nw_x, nw_y, 'k', 'LineWidth', 2);

b3 = 2+change;
b4 = 2+change;
ne_x = [b3 b3 20];
ne_y = [20 b4 b4];
ne = plot(ne_x, ne_y, 'k', 'LineWidth', 2);

b5 = 2+change;
b6 = -2-change;
se_x = [b5 b5 20];
se_y = [-20 b6 b6];
se = plot(se_x, se_y, 'k', 'LineWidth', 2);

b7 = -2-change;
b8 = -2-change;
sw_x = [-20 b7 b7];
sw_y = [b8 b8 -20];
sw = plot(sw_x, sw_y, 'k', 'LineWidth', 2);


randomize(change, g, o, r, b8, a1, b4, a2, b1, a3, b5, a4, n, p)



end