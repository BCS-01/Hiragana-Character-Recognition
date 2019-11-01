clc;
clear all;

srcFiles = dir('D:\Kuliah\Semester 8\Tugas Akhir\Gambar\target\*.png');

for i = 1 : length(srcFiles)
    filename = strcat('D:\Kuliah\Semester 8\Tugas Akhir\Gambar\target\',srcFiles(i).name);
    Image = imread(filename);

    imagecrop=crop(Image);%crop image
    
    normalize=imresize(imagecrop,[64 64]); %normalisasi    
    ekstrasi_ciri=def(normalize);%ekstrasi ciri
    Simpan(i,:)=ekstrasi_ciri;
end

%memberi label
Simpan(:,101)=(1:46)';
Simpantemp=Simpan(:,1:100);

jmlpercobaan=6000; %jumlah percobaan kmeans
n=7; %brp cluster
center=zeros(jmlpercobaan,n);

%random nilai center
for ii=1:jmlpercobaan
    p = randperm(length(srcFiles),n);
    [C, ia, ic] = unique(p,'sorted'); %mengurutkan dari kecil ke besar pada baris
    while ismember(C,center,'rows') %random lg jika center sudah ada
        p = randperm(length(srcFiles),n);
        [C, ia, ic] = unique(p,'sorted');
    end
    center(ii,:)=C;
end

%melakukan percobaan berdasarkan center yg telah di random
percobaan = cell(jmlpercobaan,n);
for pr=1:jmlpercobaan
    idx=cluster(Simpantemp,n,center(pr,:)); %cluster, k means
    hasil=[idx,(1:46)']; %menggabungkan hasil cluster dan label
    [h,i] = sort(idx); %sort berdasarkan hasil cluster
    hasil1 = hasil(i,:);
    
    %menyimpan hasil setiap percobaan
    for ii=1:n
        for jj=1:46
            if ii==hasil1(jj,1)
                percobaan{pr,ii} = [percobaan{pr,ii} hasil1(jj,2)];
            end
        end
    end
end

hasil_percobaan=percobaan(:); %matrix dijadikan 1 kolom

%mengecek jumlah cluster yg sama
nilai=zeros(jmlpercobaan,n);
for ii=1:size(percobaan,1)
   for jj=1:n
       for kk=1:size(hasil_percobaan,1)
           if length(percobaan{ii,jj})==length(hasil_percobaan{kk,1})
              if ismember(percobaan{ii,jj},hasil_percobaan{kk,1},'rows')
                  nilai(ii,jj)=nilai(ii,jj)+1;
              end
           end
       end
   end
end

total=sum(nilai,2);%menjumlahkan nilai pada setiap row
[nilai urutan]=sort(total,'descend'); %sort dari besar ke kecil
cluster_7=percobaan(urutan(1),:); %mengambil cluster yang memiliki nilai terbesar

%simpan cluster
templvq1=cluster_7{1,1}';
for i=1:size(cluster_7{1,1}',1)
    z=find(templvq1(i,1)==Simpan(:,101));
    LVQ1(i,:)=Simpan(z,:);
end

templvq2=cluster_7{1,2}';
for i=1:size(cluster_7{1,2}',1)
    z=find(templvq2(i,1)==Simpan(:,101));
    LVQ2(i,:)=Simpan(z,:);
end

templvq3=cluster_7{1,3}';
for i=1:size(cluster_7{1,3}',1)
    z=find(templvq3(i,1)==Simpan(:,101));
    LVQ3(i,:)=Simpan(z,:);
end

templvq4=cluster_7{1,4}';
for i=1:size(cluster_7{1,4}',1)
    z=find(templvq4(i,1)==Simpan(:,101));
    LVQ4(i,:)=Simpan(z,:);
end

templvq5=cluster_7{1,5}';
for i=1:size(cluster_7{1,5}',1)
    z=find(templvq5(i,1)==Simpan(:,101));
    LVQ5(i,:)=Simpan(z,:);
end

templvq6=cluster_7{1,6}';
for i=1:size(cluster_7{1,6}',1)
    z=find(templvq6(i,1)==Simpan(:,101));
    LVQ6(i,:)=Simpan(z,:);
end

templvq7=cluster_7{1,7}';
for i=1:size(cluster_7{1,7}',1)
    z=find(templvq7(i,1)==Simpan(:,101));
    LVQ7(i,:)=Simpan(z,:);
end
save Target_cluster_7.mat LVQ1 LVQ2 LVQ3 LVQ4 LVQ5 LVQ6 LVQ7 percobaan nilai urutan Simpan
