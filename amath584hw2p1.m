clear, close, clc;
big_folder = 'CroppedYale';
myimage = [];
bigimage=[];
myfilenames = [];

foldernames = dir(fullfile(big_folder,'Y*'));
for l=1:38
current_folder=fullfile(big_folder,foldernames(l).name);


my_folder = current_folder;
myfilenames = dir(fullfile(my_folder,'y*'));
 
 for k=1:64
     current_file_name= fullfile(my_folder,myfilenames(k).name);
     current_image = imread(current_file_name);
         myimage(:,k)= current_image(:);
end
bigimage(:,l)=myimage(:);
end
final_image=[];
final_image = imresize(bigimage,[32256,2432]);
s =svd(final_image);
[U,S,V] = svd(final_image,'econ');
U2(:,10) = U(:,10);