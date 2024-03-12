function p1()
% Take user inputs first:

n = input('Enter total number of cars: ');
w = input('Enter the width of the road: ');
p = input('Enter the probability that cars do not stop at the red light: ');

g = input('Enter the duration for green color of traffic lights: ');
o = input('Enter the duration for orange color of traffic lights: ');
r = input('Enter the duration for red color of traffic lights: ');

unit = w*2;

crossroad(unit, g, o, r, n, p)
end