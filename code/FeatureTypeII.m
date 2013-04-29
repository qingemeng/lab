function f = FeatureTypeII(ii_im, x, y, w, h)

B1 = ComputeBoxSum(ii_im,(x+w), y, w, h);
B2 = ComputeBoxSum(ii_im,x, y, w, h);

f = B1 - B2;

end