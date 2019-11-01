clc;
clear all;

load Target_cluster_5.mat LVQ3
load bagi_data.mat latih_set validasi_set

data(1,1)=1; 
data(2,1)=4; 
data(3,1)=5;
data(4,1)=6; 
data(5,1)=13; 
data(6,1)=15;
data(7,1)=16; 
data(8,1)=17; 
data(9,1)=19;
data(10,1)=20; 
data(11,1)=24; 
data(12,1)=28;
data(13,1)=32; 
data(14,1)=33; 
data(15,1)=34;
data(16,1)=35; 
data(17,1)=36; 
data(18,1)=39;
data(19,1)=41; 
data(20,1)=43; 
data(21,1)=44;
data(22,1)=45; 
data(23,1)=46;

%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(latih_set(:,197)==label); %mencari ciri dgn label pada latih set
    latih_set1=latih_set(baris_latih,:); %mengambil ciri dengan label       

    jml=size(latih_set1(:,1),1);

    baris_validasi=find(validasi_set(:,197)==label); %mencari ciri dgn label pada validasi
    validase_set1=validasi_set(baris_validasi,:); %mengambil ciri dengan label

    if jj==1
       data_latih=latih_set1;
       data_validasi=validase_set1;
    else
       data_latih = vertcat(data_latih,latih_set1);
       data_validasi = vertcat(data_validasi,validase_set1);
    end
end
    
[jumlahinput kolom]=size(data_latih);
random_input = randperm(jumlahinput);
data_latih = data_latih(random_input,:);
    %%latih LVQ
    lr=0.05;
    hasil=latih_LVQ(data_latih,data_validasi,LVQ3,lr);


save LVQ3.mat hasil
% save random_data_latih.mat data_latih