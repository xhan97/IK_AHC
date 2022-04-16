function eva_setup = setup()
    root = fileparts(mfilename('fullpath'));
    addpath(genpath(fullfile(root, 'evaluation')));
    addpath(genpath(fullfile(root, 'src')));
end