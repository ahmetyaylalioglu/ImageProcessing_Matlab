%Resize multiple images in a folder,without keeping aspect ratio!!And save with same name and order.
%Shortest way when compare with photoshop,pixresizer,photoscape (these apps always keep aspect ratio if working multiple files)
fileFolder = fullfile('G:','CV for Faces','Dataset','MyFaceSemantic','V3','Train_RGB','aio');
dirOutput = dir(fullfile(fileFolder,'*.bmp'));
fileNames = {dirOutput.name};

for k=1:length(fileNames)
    H = fileNames{k};
    S = imread(H);
    I = imresize(S, [512 480]);
    imwrite(I,fullfile('G:','CV for Faces','Dataset','MyFaceSemantic','V3','Train_RGB','aio','final',H));
end
