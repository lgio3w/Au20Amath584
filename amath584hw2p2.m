clear, close, clc;
myimage = [];
myfilenames = [];

myfilenames = dir(fullfile('yalefaces','s*'));
 
 for k=1:165
     current_file_name= fullfile('yalefaces',myfilenames(k).name);
     current_image = imread(current_file_name);
         myimage(:,k)= current_image(:);
end


s =svd(myimage);
[U,S,V] = svd(myimage,'econ');
U2(:,10) = U(:,10);