clc
clear all
load LVQ.mat
load bagi_data.mat

    bobot_LVQ1=hasil{1,1};
    jml_test=size(test_set(:,1),1);

    benar=0;
    salah=1;
    matrix=zeros(46,46);
    data_benar=zeros(46,1);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set(i,:),bobot_LVQ1);
        target(i,1)=test_set(i,197);
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
            benar1{benar,1}=prediksi(i,1);
            benar1{benar,2}=test_set(i,:);

            nilai_benar=data_benar(target(i,1),1);
            data_benar(target(i,1),1)=nilai_benar+1;
        else
            salah3{salah,1}=target(i,1);
            salah3{salah,2}=prediksi(i,1);
            salah3{salah,3}=test_set(i,:);
            salah=salah+1;
        end
        nil=matrix(target(i,1),prediksi(i,1));
        matrix(target(i,1),prediksi(i,1))=nil+1;
        matrix_kum=matrix;
    end
    
for ii=1:size(salah3(:,1),1)
    gambar_salah(ii,:)=salah3{ii,3}; %mengambil ciri gambar yang salah dikenali
end
save gambar_salah.mat gambar_salah salah3

for ii=1:size(benar1(:,1),1)
    gambar_benar(ii,:)=benar1{ii,2}; %mengambil ciri gambar yang salah dikenali
end
save gambar_benar.mat gambar_benar salah3

    akurasi(1,1)=(benar/jml_test)*100;
    
save akurasi_1.mat akurasi
