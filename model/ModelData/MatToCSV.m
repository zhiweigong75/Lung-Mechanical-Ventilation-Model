clc,clear
% 
% % Specify the parent folder containing the subfolders
% main_dir = '/Users/zhiweigong/Library/CloudStorage/OneDrive-JohnsHopkins/Attachments/JHU(1)/2023 Spring/Introduction to Research/Project/Latest_model/resp-mech-simulink-model/model/ModelData/PEEP7';
% 
% % RR subfolder
% subFolders1 = dir(main_dir);
% subFolders1 = subFolders1([subFolders1.isdir]);
% subFolders1 = subFolders1(3:end); % Remove '.' and '..' entries

% C_T subfolder


% PaO subfolder


% Top dir
Top_dir = '/Users/zhiweigong/Library/CloudStorage/OneDrive-JohnsHopkins/Attachments/JHU(1)/2023 Spring/Introduction to Research/Project/Latest_model/resp-mech-simulink-model/model/ModelData';
% PEEP dir
for i = 7:10
    PEEP_dir = fullfile(Top_dir, sprintf('PEEP%d', i));
    % RR dir
    for j = 12:16
        RR_dir = fullfile(PEEP_dir, sprintf('RR%d', j));
        % C_T dir
        for k = 0.01:0.01:0.05
            k_str = num2str(k);
            C_T_dir = fullfile(RR_dir, ['C_T', k_str]);
            % PaO dir
            for m = 15:25
                PaO_dir = fullfile(C_T_dir, sprintf('PaO%d', m));
                % Data dir
                Data_dir = fullfile(PaO_dir, 'Data');
                file = dir(fullfile(Data_dir, '*.mat'));
                filename = file.name;
                filepath = fullfile(Data_dir, filename);

                %  load data
                dataTable = load(filepath);
                
                % convert data to timeseries type
                data = timeseries(dataTable.mechanics_lung);
                
                % Add colume names and save data as a table
                Time = data.Time;
                Data = data.Data;
                DataName = {'Time', 'Pressure', 'Flow', 'Volume', 'Data4'};
                whole = table(Time, Data(:, 1), Data(:, 2), Data(:, 3), Data(:, 4), 'VariableNames', DataName);
                
                % save data as .xlsx file
                % path = '/Users/zhiweigong/Library/CloudStorage/OneDrive-JohnsHopkins/Attachments/JHU(1)/2023 Spring/Introduction to Research/Project/Latest_model/resp-mech-simulink-model/model/ModelData/PEEP7/RR12/C_T0.01/PaO15/Data';
                writetable(whole, fullfile(Data_dir, 'Data.xlsx'));
            end
        end
    end

end
% sprintf('SSM_pc%d_%s.vtk', i, strcat(num2str(coeffs(j)), 'STD'))

% A_path = '/Users/zhiweigong/Library/CloudStorage/OneDrive-JohnsHopkins/Attachments/JHU(1)/2023 Spring/Introduction to Research/Project/Latest_model/resp-mech-simulink-model/model/ModelData/PEEP7/RR12/C_T0.01/PaO15/Data';
% main_dir = '/Users/zhiweigong/Library/CloudStorage/OneDrive-JohnsHopkins/Attachments/JHU(1)/2023 Spring/Introduction to Research/Project/Latest_model/resp-mech-simulink-model/model/ModelData/PEEP7/RR12/C_T0.01/PaO15/Data/data_Rc_1_Rp_0.5_Cs_0.005_Cw_0.02_CL_0.02.mat';

