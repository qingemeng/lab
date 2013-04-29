function f = FeatureTypeIV(ii_im, x, y, w, h)

B1 = ComputeBoxSum(ii_im,x+w,y,w,h) + ComputeBoxSum(ii_im,x,y+h,w,h);
B2 = ComputeBoxSum(ii_im,x,y,w,h) + ComputeBoxSum(ii_im,x+w,y+h,w,h);

f = B1-B2;

end