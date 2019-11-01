clc;
clear all;

load Target_cluster_3.mat LVQ1
load bagi_data.mat latih_set validasi_set

data(1,1)=1; 
data(2,1)=2;
data(3,1)=3;
data(4,1)=4;
data(5,1)=5;
data(6,1)=7;
data(7,1)=8;
data(8,1)=9;
data(9,1)=10;
data(10,1)=11;
data(11,1)=12;
data(12,1)=15;
data(13,1)=17;
data(14,1)=18;
data(15,1)=19;
data(16,1)=20;
data(17,1)=21;
data(18,1)=22;
data(19,1)=25;
data(20,1)=26;
data(21,1)=27;
data(22,1)=28;
data(23,1)=29;
data(24,1)=30;
data(25,1)=32;
data(26,1)=34;
data(27,1)=35;
data(28,1)=36;
data(29,1)=37;
data(30,1)=39;
data(31,1)=40;
data(32,1)=41;
data(33,1)=43;
data(34,1)=45;
data(35,1)=46;

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
    
    %%latih LVQ
[jumlahinput kolom]=size(data_latih);
random_input = randperm(jumlahinput);
data_latih = data_latih(random_input,:);
    lr=0.05;
    hasil=latih_LVQ(data_latih,data_validasi,LVQ1,lr);

save LVQ1.mat hasil
% save random_data_latih.mat data_latih