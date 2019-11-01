clc;
clear all;

load pre_ekstrasi_ciri.mat

set_latih=130; 
data_validasi=40;

%data latih=90 setiap gambar

%%membagi data ekstrasi ciri menjadi 4
%%data_test , data_latih,data validasi
for jj=1:46
    label=jj;
    baris_label=find(data_ekstrasi(:,197)==label); %mencari ciri dgn label
    data_ekstrasi_label=data_ekstrasi(baris_label,:); %mengambil ciri dengan label
    
    jml_t=size(data_ekstrasi_label,1);
    
    %random sebanyak set_latih pada jumlah gambar
    temp=randperm(jml_t,set_latih);
    angka_random{jj,1}=temp;     

    %memisah data menjadi set_test untuk enseble dan set_latih
    barislatih=1;
    baristest=1;
    latih_tmp=zeros(set_latih,197);
    test=zeros(jml_t-set_latih,197);
    for j=1:size(data_ekstrasi_label,1)
        if ismember(j,temp) %jika angka j terdapat di temp; jadikan set_latih
           latih_tmp(barislatih,:)=data_ekstrasi_label(j,:);
           barislatih=barislatih+1;
        else
            test(baristest,:)=data_ekstrasi_label(j,:); %data_test
            baristest=baristest+1;
        end
    end
    
    data_latih1=barislatih-1;
    %data latih dibagi menjadi 2 : data latih dan data validasi
    temp1=randperm(data_latih1,data_validasi);

    %memisah data_latih menjadi data_latih dan data_validasi
    barislatih=1;
    barisvalidasi=1;
    latih=zeros(data_latih1-data_validasi,197);
    validasi=zeros(data_validasi,197);
    for j=1:data_latih1
        if ismember(j,temp1) %jika angka j terdapat di temp; jadikan data validasi
           validasi(barisvalidasi,:)=latih_tmp(j,:); %validasi
           barisvalidasi=barisvalidasi+1;
        else
           latih(barislatih,:)=latih_tmp(j,:);
           barislatih=barislatih+1;
        end
    end
       
    if jj==1
       test_set=test;
       latih_set=latih;
       validasi_set=validasi;
    else
       test_set = vertcat(test_set,test);
       latih_set = vertcat(latih_set,latih);
       validasi_set = vertcat(validasi_set,validasi);
    end
end

% save bagi_data.mat test_set latih_set  validasi_set