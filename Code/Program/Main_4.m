clc;
clear all;

load Target_cluster_7.mat LVQ4
load bagi_data.mat latih_set validasi_set
load learning_rate.mat

data(1,1)=9; 
data(2,1)=26; 
data(3,1)=30;


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
    hasil(ii,:)=latih_LVQ(data_latih,data_validasi,LVQ4,lr);

save LVQ4.mat hasil
% save random_data_latih.mat data_latih