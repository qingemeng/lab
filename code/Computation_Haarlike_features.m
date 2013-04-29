function Computation_Haarlike_features
[im, ii_im] = LoadIm('face00001.bmp');
f1  = FeatureTypeI(ii_im,1,1);
f2 = FeatureTypeII(ii_im)

end


%2.2.1
function A = ComputeBoxSum(ii_im, x, y, w, h)

A = ii_im(y+h-1,x+w-1)- ii_im(y-1,x+w-1) - ii_im(y+h -1, x-1) + ii_im(y-1,x-1);

end

%2.2.2
function f = FeatureTypeI(ii_im, x, y, w, h)

B1 = ComputeBoxSum(ii_im,x, y, w, h);
B2 = ComputeBoxSum(ii_im,x, (y + h), w, h);

f = B1 - B2;

end

function f = FeatureTypeII(ii_im, x, y, w, h)

B1 = ComputeBoxSum(ii_im,(x+w), y, w, h);
B2 = ComputeBoxSum(ii_im,x, y, w, h);

f = B1 - B2;

end

function f = FeatureTypeIII(ii_im, x, y, w, h)

f = 2*ComputeBoxSum(ii_im,x+w,y,w,h) - ComputeBoxSum(ii_im,x,y,w*3,h);

end