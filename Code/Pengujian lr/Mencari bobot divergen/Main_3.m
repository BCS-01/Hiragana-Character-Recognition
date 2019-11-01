clc;
clear all;

load Target_cluster_7.mat LVQ3
load bagi_data.mat latih_set validasi_set
load learning_rate.mat

data(1,1)=1; 
data(2,1)=5; 
data(3,1)=6;
data(4,1)=16; 
data(5,1)=17; 
data(6,1)=23;
data(7,1)=24; 
data(8,1)=33; 
data(9,1)=44;


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
    lr=0.05
    hasil=latih_LVQ(data_latih,data_validasi,LVQ3,lr);

save LVQ3.mat hasil
% save random_data_latih.mat data_latih