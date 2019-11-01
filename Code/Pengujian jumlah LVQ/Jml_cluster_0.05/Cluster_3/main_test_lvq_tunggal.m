clc
clear all
load bagi_data.mat
load LVQ2.mat
data(1,1)=6;
data(2,1)=14;
data(3,1)=16;
data(4,1)=23;
data(5,1)=24;
data(6,1)=33;
data(7,1)=42;
data(8,1)=44;
matrix1=zeros(8,8);
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    latih_set1=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=latih_set1;
    else
       test_set1 = vertcat(test_set1,latih_set1);
    end
end

    bobot_LVQ3=hasil{1,1};
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;

    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ3);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah1(salah,1)=target(i,1);
            salah1(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix1(x,y);
        matrix1(x,y)=nil+1;
    end
    data_salah{1,1}=salah1;
    data_matrix{1,1}=matrix1;
    akurasi(1,1)=(benar/jml_test)*100;

load LVQ3.mat
data=0;
data(1,1)=13; 
data(2,1)=31; 
data(3,1)=38;
matrix2=zeros(3,3);
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    latih_set1=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=latih_set1;
    else
       test_set1 = vertcat(test_set1,latih_set1);
    end
end

    bobot_LVQ3=hasil{1,1};
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;

    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ3);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah2(salah,1)=target(i,1);
            salah2(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix2(x,y);
        matrix2(x,y)=nil+1;
    end
    data_salah{1,2}=salah2;
    data_matrix{1,2}=matrix2;
    akurasi(1,2)=(benar/jml_test)*100;

load bagi_data.mat
load LVQ1.mat
data=0;
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
matrix3=zeros(35,35);
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    latih_set1=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=latih_set1;
    else
       test_set1 = vertcat(test_set1,latih_set1);
    end
end

    bobot_LVQ3=hasil{1,1};
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;

    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ3);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah3(salah,1)=target(i,1);
            salah3(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix3(x,y);
        matrix3(x,y)=nil+1;
    end
    data_salah{1,3}=salah3;
    data_matrix{1,3}=matrix3;
    akurasi(1,3)=(benar/jml_test)*100;


save terbaik.mat akurasi