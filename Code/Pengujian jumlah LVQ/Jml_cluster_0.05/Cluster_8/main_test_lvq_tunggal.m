
clc
clear all
load bagi_data.mat
load LVQ1.mat

data(1,1)=1; 
data(2,1)=6;
data(3,1)=23; 
data(4,1)=24;
data(5,1)=34; 
data(6,1)=44;
data_benar_matrix=zeros(46,1);
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end


    bobot_LVQ1=hasil;
    jml_test=size(test_set1(:,1),1);
    benar=0;
    salah=1;
    salah1=0;
    matrix1=zeros(6,6);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ1);
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


load bagi_data.mat
load LVQ2.mat
data=0;
data(1,1)=7;
data(2,1)=11;
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end

    bobot_LVQ2=hasil;
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;
    salah2=0;
    matrix2=zeros(2,2);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ2);
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


load LVQ3.mat
data=0;
data(1,1)=14;
data(2,1)=42; 
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end

    bobot_LVQ3=hasil;
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;
    salah3=0;
    matrix3=zeros(2,2);
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

    akurasi(1,3)=(benar/jml_test)*100;
    data_matrix{1,3}=matrix3;
    data_salah{1,3}=salah3;
    
load LVQ4.mat
data=0;
data(1,1)=2; 
data(2,1)=3;
data(3,1)=10; 
data(4,1)=12;
data(5,1)=18; 
data(6,1)=22;
data(7,1)=25; 
data(8,1)=27;
data(9,1)=29; 
data(10,1)=37;
data(11,1)=40;
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end

    bobot_LVQ4=hasil;
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;
    salah4=0;
    matrix4=zeros(11,11);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ4);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah4(salah,1)=target(i,1);
            salah4(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix4(x,y);
        matrix4(x,y)=nil+1;
    end
    data_salah{1,4}=salah4;
    data_matrix{1,4}=matrix4;
    akurasi(1,4)=(benar/jml_test)*100;


load LVQ5.mat
data=0;
data(1,1)=8; 
data(2,1)=13; 
data(3,1)=19; 
data(4,1)=28; 
data(5,1)=36; 
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end

    bobot_LVQ5=hasil;
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;
    salah5=0;
    matrix5=zeros(5,5);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ5);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah5(salah,1)=target(i,1);
            salah5(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix5(x,y);
        matrix5(x,y)=nil+1;
    end
    data_salah{1,5}=salah5;
    data_matrix{1,5}=matrix5;
    akurasi(1,5)=(benar/jml_test)*100;

load LVQ6.mat
data=0;
data(1,1)=9; 
data(2,1)=26; 
data(3,1)=30; 
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end

    bobot_LVQ6=hasil;
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;
    salah6=0;
    matrix6=zeros(3,3);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ6);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah6(salah,1)=target(i,1);
            salah6(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix6(x,y);
        matrix6(x,y)=nil+1;
    end
    data_salah{1,6}=salah6;
    data_matrix{1,6}=matrix6;
    akurasi(1,6)=(benar/jml_test)*100;

load LVQ7.mat
data=0;
data(1,1)=31; 
data(2,1)=38;
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end

    bobot_LVQ7=hasil;
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;
    salah7=0;
    matrix7=zeros(2,2);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ7);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah7(salah,1)=target(i,1);
            salah7(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix7(x,y);
        matrix7(x,y)=nil+1;
    end
    data_salah{1,7}=salah7;
    data_matrix{1,7}=matrix7;
    akurasi(1,7)=(benar/jml_test)*100;
    
load LVQ8.mat
data=0;
data(1,1)=4; 
data(2,1)=5;
data(3,1)=15; 
data(4,1)=16;
data(5,1)=17; 
data(6,1)=20;
data(7,1)=21; 
data(8,1)=32;
data(9,1)=33; 
data(10,1)=35;
data(11,1)=39; 
data(12,1)=41;
data(13,1)=43; 
data(14,1)=45;
data(15,1)=46;
%mengambil ciri yg sesuai dengan label
for jj=1:length(data(:,1))
    label=data(jj,1);
    baris_latih=find(test_set(:,197)==label); %mencari ciri dgn label pada latih set
    uji=test_set(baris_latih,:); %mengambil ciri dengan label       
    
    if jj==1
       test_set1=uji;
    else
       test_set1 = vertcat(test_set1,uji);
    end
end
    bobot_LVQ8=hasil;
    jml_test=size(test_set1(:,1),1);

    benar=0;
    salah=1;
    salah8=0;
    matrix8=zeros(15,15);
    for i=1:jml_test
        prediksi(i,1)=test_LVQ(test_set1(i,:),bobot_LVQ8);
        target(i,1)=test_set1(i,197);
        x=bikin_matrix(target(i,1));
        y=bikin_matrix(prediksi(i,1));
        if target(i,1)==prediksi(i,1)
            benar=benar+1;
        else
            salah8(salah,1)=target(i,1);
            salah8(salah,2)=prediksi(i,1);
            salah=salah+1;
        end
        nil=matrix8(x,y);
        matrix8(x,y)=nil+1;
    end
    data_salah{1,8}=salah8;
    data_matrix{1,8}=matrix8;
    akurasi(1,8)=(benar/jml_test)*100;
save terbaik.mat akurasi