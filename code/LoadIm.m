function [im, ii_im] = LoadIm(im_fname)

addpath('imDir');
imDir = 'imDir/';
im = double(imread(strcat(imDir, im_fname)));

% normalization
xn = NormalizeData(im(:));
im(:) = xn;

% integral image
ii_im = cumsum(cumsum(double(im)),2);

% output integral image

imagesc(ii_im);
colormap(gray);
axis equal
axis off
end



function xn = NormalizeData(x)

mu = mean(x);
s = std (x);
xn =(x-mu)/s;

end