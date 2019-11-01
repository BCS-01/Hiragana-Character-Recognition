clc
clear all
load bagi_data.mat
load LVQ1.mat
bobot_LVQ1=hasil{1,1};
load LVQ2.mat
bobot_LVQ2=hasil{1,1};
load LVQ3.mat
bobot_LVQ3=hasil{1,1};
load LVQ4.mat
bobot_LVQ4=hasil{1,1};
load LVQ5.mat
bobot_LVQ5=hasil{1,1};
load LVQ6.mat
bobot_LVQ6=hasil{1,1};
load LVQ7.mat
bobot_LVQ7=hasil{1,1};

jml_test=size(test_set(:,1),1);
benar=0;
salah=1;
for i=1:jml_test
    hasil_ensemble(1,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ1);
    hasil_ensemble(2,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ2);
    hasil_ensemble(3,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ3);
    hasil_ensemble(4,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ4);
    hasil_ensemble(5,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ5);
    hasil_ensemble(6,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ6);
    hasil_ensemble(7,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ7);
%     hasil
    [nilai urutan]=sort(hasil_ensemble(:,1),'ascend');
    target(i,1)=test_set(i,101);
    prediksi(i,1)=hasil_ensemble(urutan(1),2);
    if target(i,1)==prediksi(i,1)
        benar=benar+1;
    else
        salah3{salah,1}=target(i,1);
        salah3{salah,2}=prediksi(i,1);
        salah3{salah,3}=hasil_ensemble;
        salah=salah+1;
    end
end

akurasi=(benar/jml_test)*100;
save akurasi_75.mat akurasi
