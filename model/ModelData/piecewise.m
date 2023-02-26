clc,clear
data = xlsread('/Users/zhiweigong/Library/CloudStorage/OneDrive-JohnsHopkins/Attachments/JHU(1)/2023 Spring/Introduction to Research/Project/Latest_model/resp-mech-simulink-model/model/ModelData/PEEP7/RR12/C_T0.01/PaO15/Data/Data.xlsx');
data = data(1:501, :);
time = data(:, 1);
pressure = data(:, 2);
n = 4;
% 
% x_order = unique(time,'sorted');
% nX = length(x_order);
% endTable = nchoosek(2:nX-2,n-1);

[coef,breakPt,R2] = piecewiselm(time,pressure,n);

