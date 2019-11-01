clc
clear all

load gambar_benar.mat gambar_benar

data{1,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\160\su\';
data{1,2}=13;
data{1,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\su\*.png'); 
data{2,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\158\ma\';
data{2,2}=31;
data{2,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\ma\*.png'); 
data{3,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\160\yo\';
data{3,2}=38;
data{3,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\yo\*.png'); 
data{4,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\159\se\';
data{4,2}=14;
data{4,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\se\*.png'); 
data{5,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\160\mu\';
data{5,2}=33;
data{5,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\mu\*.png'); 
data{6,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\160\ka\';
data{6,2}=6;
data{6,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\ka\*.png'); 
data{7,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\159\re\';
data{7,2}=42;
data{7,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\re\*.png'); 
data{8,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\158\ta\';
data{8,2}=16;
data{8,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\ta\*.png'); 
data{9,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\158\nu\';
data{9,2}=23;
data{9,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\nu\*.png'); 
data{10,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\158\ne\';
data{10,2}=24;
data{10,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\ne\*.png'); 
data{11,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\159\wa\';
data{11,2}=44;
data{11,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\wa\*.png');
data{12,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\ra\*.png');
data{12,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\ra\';
data{12,2}=39; 
data{13,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\fu\*.png');
data{13,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\fu\';
data{13,2}=28;
data{14,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\te\*.png');
data{14,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\te\';
data{14,2}=19;
data{15,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\ya\*.png');
data{15,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\ya\';
data{15,2}=36;
data{16,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\yu\*.png');
data{16,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\yu\';
data{16,2}=37;
data{17,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\157\ko\*.png');
data{17,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\157\ko\';
data{17,2}=10;
data{18,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\tsu\*.png');
data{18,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\tsu\';
data{18,2}=18;
data{19,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\ri\*.png');
data{19,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\ri\';
data{19,2}=40;
data{20,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\he\*.png');
data{20,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\he\';
data{20,2}=29;
data{21,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\156\ha\*.png');
data{21,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\156\ha\';
data{21,2}=26;
data{22,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\157\no\*.png');
data{22,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\157\no\';
data{22,2}=25;
data{23,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\ho\*.png');
data{23,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\ho\';
data{23,2}=30;
data{24,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\wo\*.png');
data{24,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\wo\';
data{24,2}=45;
data{25,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\ki\*.png');
data{25,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\158\ki\';
data{25,2}=7;
data{26,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\hi\*.png');
data{26,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\hi\';
data{26,2}=27;
data{27,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\ni\*.png');
data{27,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\158\ni\';
data{27,2}=22;
data{28,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\ro\*.png');
data{28,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\ro\';
data{28,2}=43;
data{29,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\o\*.png'); 
data{29,2}=5;
data{29,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\160\o\';
data{30,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\me\*.png');
data{30,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\me\';
data{30,2}=34;
data{31,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\sa\*.png');
data{31,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\sa\';
data{31,2}=11;
data{32,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\ku\*.png');
data{32,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\158\ku\';
data{32,2}=8;
data{33,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\e\*.png');
data{33,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\e\';
data{33,2}=4;
data{34,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\to\*.png');
data{34,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\to\';
data{34,2}=20;
data{35,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\157\na\*.png');
data{35,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\157\na\';
data{35,2}=21;
data{36,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\mi\*.png');
data{36,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\mi\';
data{36,2}=32;
data{37,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\i\*.png');
data{37,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\i\';
data{37,2}=2;
data{38,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\mo\*.png');
data{38,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\mo\';
data{38,2}=35;
data{39,3} = dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\a\*.png'); 
data{39,2}=1;
data{39,1}='E:\Tugas Akhir\Gambar\ETL8B2C1\160\a\';
data{40,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\160\shi\*.png');
data{40,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\160\shi\';
data{40,2}=12;
data{41,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\158\ke\*.png');
data{41,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\158\ke\';
data{41,2}=9;
data{42,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\157\n\*.png');
data{42,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\157\n\';
data{42,2}=46;
data{43,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\ru\*.png');
data{43,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\ru\';
data{43,2}=41;
data{44,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\so\*.png');
data{44,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\so\';
data{44,2}=15;
data{45,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\chi\*.png');
data{45,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\chi\';
data{45,2}=17;
data{46,3}= dir('E:\Tugas Akhir\Gambar\ETL8B2C1\159\u\*.png');
data{46,1} ='E:\Tugas Akhir\Gambar\ETL8B2C1\159\u\';
data{46,2}=3;

jmlslh=1;
    for i=1:length(data(:,1))
        datatemp=data{i,3};
        [baris kolom]=size(datatemp);
        
        %%ekstrasi ciri dan pre-processing
        data_ekstrasitemp=zeros(baris,196);
        
        for j=1:baris %baris = banyaknya gambar 
            filename=strcat(data{i,1},datatemp(j,1).name);
            filename1{j,1}=strcat(data{i,1},datatemp(j,1).name);
            Image=imread(filename);

            cropimage=crop(Image);
            normalize=imresize(cropimage,[64 64]);
            
            ekstrasi_ciri=def(normalize);
            data_ekstrasitemp(j,:)=ekstrasi_ciri;
        end
        
        %kolom+1 bernilai target
        %memberikan label
        data_ekstrasitemp(:,197)=data{i,2};
        
        %mengambil gambar salah
        jmlgbr=size(gambar_benar(:,1));
        for j=1:jmlgbr %baris = banyaknya gambar 
            for jj=1:baris
                if data_ekstrasitemp(jj,:)==gambar_benar(j,:)
                    nama_gambar_benar{jmlslh,1}=strcat(data{i,1},datatemp(jj,1).name);
                    jmlslh=jmlslh+1;
                end
            end
        end
        
    end
for i=1:size(nama_gambar_benar,1)
    copyfile(nama_gambar_benar{i,1},'E:\ubah\program\gambar_benar')
end
%     save pre_ekstrasi_ciri.mat data_ekstrasi
save nama_gambar_benar.mat nama_gambar_benar