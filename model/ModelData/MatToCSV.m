clc,clear

% Specify the parent folder containing the subfolders
main_dir = '/Users/zhiweigong/Library/CloudStorage/OneDrive-JohnsHopkins/Attachments/JHU(1)/2023 Spring/Introduction to Research/Project/Latest_model/resp-mech-simulink-model/model/ModelData/PEEP7';

% RR subfolder
subFolders1 = dir(main_dir);
subFolders1 = subFolders1([subFolders1.isdir]);
subFolders1 = subFolders1(3:end); % Remove '.' and '..' entries

% C_T subfolder


% PaO subfolder
