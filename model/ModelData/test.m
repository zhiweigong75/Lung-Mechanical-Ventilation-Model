clc,clear

% Top dir
Top_dir = '/Users/zhiweigong/Desktop/excel data';
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

%             xlswrite(filepath, [], 'sheet1');

            for m = 15:25
                PaO_dir = fullfile(C_T_dir, sprintf('PaO%d', m));
                % Data dir
                Data_dir = fullfile(PaO_dir, 'Data');
                file = dir(fullfile(Data_dir, '*.xlsx'));
                filename = file.name;
                filepath = fullfile(Data_dir, filename);

                [~,~,data] = xlsread(filepath);
                xlswrite(filepath, data, sprintf('sheet%d', num2str(m)));
               
            end
        end
    end

end
