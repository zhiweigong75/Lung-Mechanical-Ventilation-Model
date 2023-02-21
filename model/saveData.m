clc,clear
data = load('/Users/zhiweigong/Desktop/resp-mech-simulink/model/ModelData/PEEP7/RR12/C_T0.01/PaO15/Data/Data.mat');
data = data.ScopeData;
time = data.time;
Flow = data.signals(1).values;
Pressure = data.signals(2).values;
Volume = data.signals(3).values;
whole = table(time, Flow, Pressure, Volume, 'VariableNames', ["Time(second)", "Flow(L/min)", "Pressure(cm H2O)", "Volume(L)"]);
% xlswrite(fullfile('1.0Data', '1.0time.xlsx'), time);
% xlswrite(fullfile('1.0Data', '1.0Flow.xlsx'), Flow);
% xlswrite(fullfile('1.0Data', '1.0Pressure.xlsx'), Pressure);
% xlswrite(fullfile('1.0Data', '1.0Volume.xlsx'), Volume);
writetable(whole, './1.5 IE Data/12RR/1.0whole.csv', 'Delimiter', ',');

clc,clear
data = load('1.5 IE/13RR/1.0Data.mat');
data = data.ScopeData;
time = data.time;
Flow = data.signals(1).values;
Pressure = data.signals(2).values;
Volume = data.signals(3).values;
whole = table(time, Flow, Pressure, Volume, 'VariableNames', ["Time(second)", "Flow(L/min)", "Pressure(cm H2O)", "Volume(L)"]);
% xlswrite(fullfile('1.0Data', '1.0time.xlsx'), time);
% xlswrite(fullfile('1.0Data', '1.0Flow.xlsx'), Flow);
% xlswrite(fullfile('1.0Data', '1.0Pressure.xlsx'), Pressure);
% xlswrite(fullfile('1.0Data', '1.0Volume.xlsx'), Volume);
writetable(whole, './1.5 IE Data/13RR/1.0whole.csv', 'Delimiter', ',');

clc,clear
data = load('1.5 IE/14RR/1.0Data.mat');
data = data.ScopeData;
time = data.time;
Flow = data.signals(1).values;
Pressure = data.signals(2).values;
Volume = data.signals(3).values;
whole = table(time, Flow, Pressure, Volume, 'VariableNames', ["Time(second)", "Flow(L/min)", "Pressure(cm H2O)", "Volume(L)"]);
% xlswrite(fullfile('1.0Data', '1.0time.xlsx'), time);
% xlswrite(fullfile('1.0Data', '1.0Flow.xlsx'), Flow);
% xlswrite(fullfile('1.0Data', '1.0Pressure.xlsx'), Pressure);
% xlswrite(fullfile('1.0Data', '1.0Volume.xlsx'), Volume);
writetable(whole, './1.5 IE Data/14RR/1.0whole.csv', 'Delimiter', ',');

clc,clear
data = load('1.5 IE/15RR/1.0Data.mat');
data = data.ScopeData;
time = data.time;
Flow = data.signals(1).values;
Pressure = data.signals(2).values;
Volume = data.signals(3).values;
whole = table(time, Flow, Pressure, Volume, 'VariableNames', ["Time(second)", "Flow(L/min)", "Pressure(cm H2O)", "Volume(L)"]);
% xlswrite(fullfile('1.0Data', '1.0time.xlsx'), time);
% xlswrite(fullfile('1.0Data', '1.0Flow.xlsx'), Flow);
% xlswrite(fullfile('1.0Data', '1.0Pressure.xlsx'), Pressure);
% xlswrite(fullfile('1.0Data', '1.0Volume.xlsx'), Volume);
writetable(whole, './1.5 IE Data/15RR/1.0whole.csv', 'Delimiter', ',');

clc,clear
data = load('1.5 IE/16RR/1.0Data.mat');
data = data.ScopeData;
time = data.time;
Flow = data.signals(1).values;
Pressure = data.signals(2).values;
Volume = data.signals(3).values;
whole = table(time, Flow, Pressure, Volume, 'VariableNames', ["Time(second)", "Flow(L/min)", "Pressure(cm H2O)", "Volume(L)"]);
% xlswrite(fullfile('1.0Data', '1.0time.xlsx'), time);
% xlswrite(fullfile('1.0Data', '1.0Flow.xlsx'), Flow);
% xlswrite(fullfile('1.0Data', '1.0Pressure.xlsx'), Pressure);
% xlswrite(fullfile('1.0Data', '1.0Volume.xlsx'), Volume);
writetable(whole, './1.5 IE Data/16RR/1.0whole.csv', 'Delimiter', ',');
