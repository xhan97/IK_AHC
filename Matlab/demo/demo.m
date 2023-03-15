% Copyright 2023 Ye Zhu. All rights reserved.
% Use of this source code is governed by a BSD-style
% license that can be found in the LICENSE file.

clear
clc
close all
rng(3)
data1 = randn(100, 2) * 4 + 8;
data2 = randn(100, 2);
data = [data1; data2];
class = zeros(200, 1) + 1;
class(101:end) = 2;
nlab_3d = normalize(data);
gscatter(nlab_3d(:, 1), nlab_3d(:, 2), class)
set(gcf, 'color', 'white');
export_fig demo/figures/ data -png

class_num = 2:1:30;

%% Euclidean distance

Dis = pdist2(nlab_3d, nlab_3d);

M = squareform(Dis);

Z = linkage(M, 'single'); % 'single' (default) | 'average' | 'weighted' | 'complete' |
thre = 0.105;

figure
[~, ~, outperm] = dendrogram(Z, size(nlab_3d, 1), 'Orientation', 'top', 'ColorThreshold', thre);
xticks([])
xlabel('Points')
ylabel('h')
hold on
line([1, size(data, 1)], [thre, thre])
set(gcf, 'color', 'w');
ylim([-0.006 max(Z(:, 3)) * 1.1])
ylim([-0.003 max(Z(:, 3)) * 1.1])

x = 1:size(nlab_3d, 1);
y = zeros(size(nlab_3d, 1), 1);

V = [[1.00, 0.00, 0.00]; [0.00, 1.00, 0.00]; [0.00, 0.00, 1.00]; [1, 0.00, 1.00]]; % 4C

scatter(x, y - 0.001, 2, V(class(outperm), :))
scatter(x, y - 0.002, 2, V(class(outperm), :))
scatter(x, y - 0.003, 2, V(class(outperm), :))

%% metries
f1_score = f1_tree(Z, class, class_num);
Purity = DenPurity(Z, class);
title({['Purity=' num2str(Purity)]
       ['F1 Score=' num2str(f1_score)]})

export_fig demo/figures/ahc -png

%% Isolation Kernel Similarity
psi = 16;
lk_func = 'single'; % 'single' (default) | 'average' | 'weighted' | 'complete' |
ik_Z = tahc_cluster(1 - IsolationKernel(data, psi, 200, false), lk_func);
thre = 0.5;

figure
[H, T, outperm] = dendrogram(ik_Z, size(nlab_3d, 1), 'Orientation', 'top', 'ColorThreshold', thre);

xticks([])
xlabel('Points')
ylabel('h')
hold on
line([1, size(data, 1)], [thre, thre])
set(gcf, 'color', 'w');
ylim([-0.006 max(Z(:, 3)) * 1.1])
ylim([-0.003 max(Z(:, 3)) * 1.1])

lineColours = cell2mat(get(H, 'Color'));
colourList = flipud(unique(lineColours, 'rows'));

newColor = [
            0.8 0.6 0
            0 1 1
            1 0.5 1];

x = 1:size(nlab_3d, 1);
y = zeros(size(nlab_3d, 1), 1);

V = [[1.00, 0.00, 0.00]; [0.00, 1.00, 0.00]; [0.00, 0.00, 1.00]; [1, 0.00, 1.00]]; % 4C

scatter(x, y - 0.001, 2, V(class(outperm), :))
scatter(x, y - 0.002, 2, V(class(outperm), :))
scatter(x, y - 0.003, 2, V(class(outperm), :))

c = cluster(Z, 'maxclust', 1 + sum(Z(:, 3) > thre));

f1_score = f1_tree(ik_Z, class, class_num);
Purity = DenPurity(ik_Z, class);
title({['Purity=' num2str(Purity)]
       ['F1 Score=' num2str(f1_score)]})
export_fig demo/figures/kahc -png
