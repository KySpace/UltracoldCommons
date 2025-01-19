fprintf("loading: UltracoldCommons.\n")

rootpath = fileparts(mfilename("fullpath"));
srcfolders = ["Zeeman"];

addpath(rootpath);
for i = 1 : numel(srcfolders)
    addpath(genpath(rootpath+"\"+srcfolders(i)));
end