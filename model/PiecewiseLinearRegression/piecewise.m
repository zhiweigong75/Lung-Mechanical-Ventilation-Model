clc,clear
data = xlsread('PEEP7_RR16_CT0.01_PaO25.xlsx');
data = data(1:501, :);
time = data(:, 1);
pressure = data(:, 2);
flow = data(:, 3);
volume = data(:, 4);
n = 4; % for pressure


[coef,breakPt,R2] = piecewiselm(time,pressure,n);

