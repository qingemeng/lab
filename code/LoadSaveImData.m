function ii_ims = LoadSaveImData( dirname, ni, im_sfn )

%   A list of ni numbers randomly chosen images in the directory 
face_fnames = dir(dirname);
aa          = 3:length(face_fnames);
a           = randperm(length(aa));
fnums       = aa(a(1:ni));
%   load data
im          = imread([dirname, '/', face_fnames(fnums(1)).name]);
ii_ims      = zeros(ni, size(im(:), 1));

for i = 1:ni
    [im, ii_im] = LoadIm([dirname, '/', face_fnames(fnums(i)).name]);
    ii_ims(i,:) = ii_im(:);
end
%   Save the image data
save(im_sfn, 'dirname', 'fnums', 'ii_ims');
end