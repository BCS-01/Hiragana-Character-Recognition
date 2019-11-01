clc;
clear all;

load Target_cluster.mat Simpan
load bagi_data.mat latih_set validasi_set

    %%latih LVQ
    [jumlahinput kolom]=size(data_latih);
random_input = randperm(jumlahinput);
data_latih = data_latih(random_input,:);
    lr=0.05;
    hasil=latih_LVQ(latih_set,validasi_set,Simpan,lr);

save LVQ.mat hasil
% save random_data_latih.mat data_latih