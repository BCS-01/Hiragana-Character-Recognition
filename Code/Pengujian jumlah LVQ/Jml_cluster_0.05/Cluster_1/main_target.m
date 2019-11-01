clc;
clear all;

srcFiles = dir('D:\Kuliah\Semester 8\Tugas Akhir\Gambar\target\*.png');

for i = 1 : length(srcFiles)
    filename = strcat('D:\Kuliah\Semester 8\Tugas Akhir\Gambar\target\',srcFiles(i).name);
    Image = imread(filename);

    imagecrop=crop(Image);%crop image
    
    normalize=imresize(imagecrop,[64 64]); %normalisasi    
    
    ekstrasi_ciri=def(normalize);%ekstrasi ciri
    Simpan(i,:)=ekstrasi_ciri;
end

%memberi label
Simpan(:,197)=(1:46)';


save Target_cluster.mat Simpan