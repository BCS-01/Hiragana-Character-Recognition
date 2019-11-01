function cluster=cluster(data,o,center)
    [baris kolom]=size(data);
   
    % 1.Tentukan jumlah cluster
    jmlcluster=o;

    %2. Tentukan centroid awal dari tiap cluster secara acak
    p = center;
    centroid=data(p,:);

    % 3. menghitung jarak setiap data dgn pusat cluster menggunakan euclidean distance
    %kemudian cari centroid baru
    tempCentroid=centroid;
    loop=true;
    while loop
        % euclidean distance
        for i=1:baris          
            for j=1:jmlcluster
                jarak(j,1)= sqrt(sum((data(i,:)-centroid(j,:)) .^ 2));
            end
            % menentukan data berada di cluster mana
            [nilai urutan]=sort(jarak(:,1),'ascend');
            tempCluster(i,1)=urutan(1); % urutan terkecil (1)
        end

        % hitung mean tiap cluster dan jadikan sebagai centroid baru
        for i=1:jmlcluster
            centroid(i,:)=mean(data(tempCluster==i,:),1);
        end

        %cek centroid berubah atau sama
        if centroid==tempCentroid
           loop=false;
        end
        tempCentroid=centroid;
    end
    
  cluster=tempCluster;
end
