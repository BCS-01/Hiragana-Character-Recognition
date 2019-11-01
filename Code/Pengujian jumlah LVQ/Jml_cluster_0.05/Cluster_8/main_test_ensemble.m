clc
clear all
load bagi_data.mat
load terbaik.mat
load LVQ1.mat
bobot_LVQ1=hasil;
load LVQ2.mat
bobot_LVQ2=hasil;
load LVQ3.mat
bobot_LVQ3=hasil;
load LVQ4.mat
bobot_LVQ4=hasil;
load LVQ5.mat
bobot_LVQ5=hasil;
load LVQ6.mat
bobot_LVQ6=hasil;
load LVQ7.mat
bobot_LVQ7=hasil;
load LVQ8.mat
bobot_LVQ8=hasil;

jml_test=size(test_set(:,1),1);
benar=0;
salah=1;
matrix=zeros(46,46);
data_benar=zeros(46,1);
for i=1:jml_test
    hasil_ensemble(1,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ1);
    hasil_ensemble(2,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ2);
    hasil_ensemble(3,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ3);
    hasil_ensemble(4,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ4);
    hasil_ensemble(5,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ5);
    hasil_ensemble(6,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ6);
    hasil_ensemble(7,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ7);
    hasil_ensemble(8,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ8);
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
    matrix_kum=matrix;
end

for ii=1:size(salah3(:,1),1)
    gambar_salah(ii,:)=salah3{ii,4}; %mengambil ciri gambar yang salah dikenali
end
save gambar_salah.mat gambar_salah salah3

for ii=1:size(benar1(:,1),1)
    gambar_benar(ii,:)=benar1{ii,2}; %mengambil ciri gambar yang salah dikenali
end
save gambar_benar.mat gambar_benar salah3

akurasi_temp=(benar/jml_test)*100


save akurasi_8.mat matrix_kum data_benar akurasi_temp

% 
% clc
% clear all
% load bagi_data.mat
% load terbaik.mat
% p=1;
% for aa=1:size(a1,1)
% load LVQ1.mat
% bobot_LVQ1=hasil{a1(aa,1),1};
% for bb=1:size(a2,1)
% load LVQ2.mat
% bobot_LVQ2=hasil{a2(bb,1),1};
% for cc=1:size(a3,1)
% load LVQ3.mat
% bobot_LVQ3=hasil{a3(cc,1),1};
% for dd=1:size(a4,1)
% load LVQ4.mat
% bobot_LVQ4=hasil{a4(dd,1),1};
% for ee=1:size(a5,1)
% load LVQ5.mat
% bobot_LVQ5=hasil{a5(ee,1),1};
% for ff=1:size(a6,1)
% load LVQ6.mat
% bobot_LVQ6=hasil{a6(ff,1),1};
% for gg=1:size(a7,1)
% load LVQ7.mat
% bobot_LVQ7=hasil{a7(gg,1),1};
% for hh=1:size(a8,1)
% load LVQ8.mat
% bobot_LVQ8=hasil{a8(hh,1),1};
% 
% jml_test=size(test_set(:,1),1);
% benar=0;
% salah=1;
% matrix=zeros(46,46);
% data_benar=zeros(46,1);
% for i=1:jml_test
%     hasil_ensemble(1,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ1);
%     hasil_ensemble(2,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ2);
%     hasil_ensemble(3,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ3);
%     hasil_ensemble(4,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ4);
%     hasil_ensemble(5,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ5);
%     hasil_ensemble(6,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ6);
%     hasil_ensemble(7,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ7);
%     hasil_ensemble(8,:)=test_LVQ_ensemble(test_set(i,:),bobot_LVQ8);
% %     hasil
%     [nilai urutan]=sort(hasil_ensemble(:,1),'ascend');
%     target(i,1)=test_set(i,197);
%     prediksi(i,1)=hasil_ensemble(urutan(1),2);
%     if target(i,1)==prediksi(i,1)
%         benar=benar+1;
%         nilai_benar=data_benar(target(i,1),1);
%         data_benar(target(i,1),1)=nilai_benar+1;
%     else
%         salah3{salah,1}=target(i,1);
%         salah3{salah,2}=prediksi(i,1);
%         salah3{salah,3}=hasil_ensemble;
%         salah=salah+1;
%     end
%     nil=matrix(target(i,1),prediksi(i,1));
%     matrix(target(i,1),prediksi(i,1))=nil+1;
%     matrix_kum{p,1}=matrix;
%     matrix_kum{p,2}=aa;
%     matrix_kum{p,3}=bb;
%     matrix_kum{p,4}=cc;
%     matrix_kum{p,5}=dd;
%     matrix_kum{p,6}=ee;
%     matrix_kum{p,7}=ff;
%     matrix_kum{p,8}=gg;
%     matrix_kum{p,9}=hh;
% end
% 
% % for ii=1:size(salah3(:,1),1)
% %     gambar_salah(ii,:)=salah3{ii,4}; %mengambil ciri gambar yang salah dikenali
% % end
% % save gambar_salah.mat gambar_salah salah3
% 
% akurasi_temp(p,1)=(benar/jml_test)*100;
% p=p+1;
% end
% end
% end
% end
% end
% end
% end
% end
% [nilai baris]=sort(akurasi_temp(:,1),'descend');
% akurasi_tot=nilai(1);
% baris_temp=baris(1);
% save akurasi_74.mat akurasi_tot matrix_kum data_benar baris_temp akurasi_temp