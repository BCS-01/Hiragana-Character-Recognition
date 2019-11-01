clc
clear all
p=1;
load bagi_data.mat
load LVQ1.mat
bobot_LVQ1=hasil{1,1};
load LVQ2.mat
bobot_LVQ2=hasil{1,1};
load LVQ3.mat
bobot_LVQ3=hasil{1,1};

jml_test=size(test_set(:,1),1);
benar=0;
salah=1;
matrix=zeros(46,46);
data_benar=zeros(46,1);
for i=1:jml_test
    hasil_ensemble(1,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ1);
    hasil_ensemble(2,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ2);
    hasil_ensemble(3,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ3);
%     hasil
    [nilai urutan]=sort(hasil_ensemble(:,1),'ascend');
    target(i,1)=test_set(i,197);
    prediksi(i,1)=hasil_ensemble(urutan(1),2);
    if target(i,1)==prediksi(i,1)
        benar=benar+1;
        benar1{benar,1}=hasil_ensemble;
        benar1{benar,2}=test_set(i,:);
        
        nilai_benar=data_benar(target(i,1),1);
        data_benar(target(i,1),1)=nilai_benar+1;
    else
        salah3{salah,1}=target(i,1);
        salah3{salah,2}=prediksi(i,1);
        salah3{salah,3}=hasil_ensemble;
        salah3{salah,4}=test_set(i,:);
        salah=salah+1;
    end
    nil=matrix(target(i,1),prediksi(i,1));
    matrix(target(i,1),prediksi(i,1))=nil+1;
end
for ii=1:size(salah3(:,1),1)
    gambar_salah(ii,:)=salah3{ii,4}; %mengambil ciri gambar yang salah dikenali
end
save gambar_salah.mat gambar_salah salah3

for ii=1:size(benar1(:,1),1)
    gambar_benar(ii,:)=benar1{ii,2}; %mengambil ciri gambar yang salah dikenali
end
save gambar_benar.mat gambar_benar salah3

akurasi=(benar/jml_test)*100;

save akurasi_3.mat akurasi