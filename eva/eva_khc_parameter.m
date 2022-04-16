% Copyright 2022 Xin Han. All rights reserved.
% Use of this source code is governed by a BSD-style
% license that can be found in the LICENSE file.

clear
clc
close all

% Dataset
dataset = [];
dataname = {};
mat = dir('Data/runned/*.mat');

for q = 1:length(mat)
    data = load(strcat('Data/runned/', mat(q).name));
    dataname{end + 1} = mat(q).name(1:end - 4);
    dataset = [dataset data];
end

len_data = length(dataset);

% Model paramters
lk_func = 'single'; % 'single', 'average', 'complete', 'weighted',

% Distance paramters
class_num = 2:1:30;

% File set
fileID_f1sore = fopen('exp_out/khc/repeat_para/f1_score.csv', 'a+');
fileID_purity = fopen('exp_out/khc/repeat_para/purity.csv', 'a+');
formatSpec = '%s, %s, %s, %d, %2.2f\n';

for i = 1:len_data
    data_n = length(dataset(i).class);

    % Isolation kernel paramters
    psi_set = 2:1:int32(data_n / 2);

    % Normalization
    data = dataset(i).data;
    data = (data - min(data)) .* ((max(data) - min(data)).^ - 1);
    data(isnan(data)) = 0.5;

    run_num = 1:1:10;
    %% evaluate isolation kernel
    for j = run_num
        for psi = psi_set
            htoc_ik_Z = tahc_cluster(1-IsolationKernel(data, psi, 200, false), lk_func);
            f1_score = f1_tree(htoc_ik_Z, dataset(i).class, class_num);
            purity = DenPurity(htoc_ik_Z, dataset(i).class);
            
            C_f1_score = {cell2mat(dataname(i)), lk_func, 'Isolationkernel', psi, f1_score};
            fprintf(fileID_f1sore, formatSpec, C_f1_score{:});

            C_purity = {cell2mat(dataname(i)), lk_func, 'Isolationkernel', psi, purity};
            fprintf(fileID_purity, formatSpec, C_purity{:});
        end

    end

end

fclose(fileID_f1sore);
fclose(fileID_purity);
