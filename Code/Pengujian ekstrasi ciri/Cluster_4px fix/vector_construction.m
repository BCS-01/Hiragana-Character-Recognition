function vector_construction=vector_construction(Image)
    % image dibagi menjadi beberapa bagian
    % setiap bagian dilakukan pengecekan ciri
    % 1 bagian = 4 vector ciri; ada 25 bagian
    baris=1;
    kolomvector=1;
    for i=1:5
       kolom=1;
       for j=1:5
           for k=2:5 % k = kode arah
            % pengecekan ciri setiap bagian
            lebar=16;
            area=0;
            vector(1,kolomvector)=jumlah_kode_arah(baris,kolom,Image,k,lebar,area); 
            kolomvector=kolomvector+1;
           end
           kolom=kolom+12;
       end
       baris=baris+12;
    end
    
    vector_construction = vector;
end
