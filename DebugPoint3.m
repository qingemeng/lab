function DebugPoint3
ii_ims = zeros(19,19,100);
mystr = ['TrainingImages/FACES', '/*.bmp'];
im_files = dir(mystr);
addpath('TrainingImages/FACES');

numPictures = length(im_files);
len         = numPictures;


for i = 1:100
    [im, ii_im] = LoadIm(im_files(i).name);
    c = ii_im;
    ii_ims(:,:,i) = ii_im;    
end

end