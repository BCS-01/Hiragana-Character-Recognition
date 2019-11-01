clc;
clear all;

load Target_cluster_7.mat LVQ6
load bagi_data.mat latih_set validasi_set

data(1,1)=2; 
data(2,1)=3; 
data(3,1)=10; 
data(4,1)=12; 
data(5,1)=18; 
data(6,1)=20; 
data(7,1)=21; 
data(8,1)=22; 
data(9,1)=25; 
data(10,1)=27; 
data(11,1)=32; 
data(12,1)=37; 
data(13,1)=39; 
data(14,1)=40; 
data(15,1)=43; 

%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(latih_set(:,101)==label); %mencari ciri dgn label pada latih set
    latih_set1=latih_set(baris_latih,:); %mengambil ciri dengan label       

    jml=size(latih_set1(:,1),1);

    baris_validasi=find(validasi_set(:,101)==label); %mencari ciri dgn label pada validasi
    validase_set1=validasi_set(baris_validasi,:); %mengambil ciri dengan label

    if jj==1
       data_latih=latih_set1;
       data_validasi=validase_set1;
    else
       data_latih = vertcat(data_latih,latih_set1);
       data_validasi = vertcat(data_validasi,validase_set1);
    end
end
    

    %%latih LVQ
    [jumlahinput kolom]=size(data_latih);
random_input = randperm(jumlahinput);
data_latih = data_latih(random_input,:);
    lr=0.05;
    hasil=latih_LVQ(data_latih,data_validasi,LVQ6,lr);


save LVQ6.mat hasil
% save random_data_latih.mat data_latih