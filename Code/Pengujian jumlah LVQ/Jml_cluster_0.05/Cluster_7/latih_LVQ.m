function latih_LVQ=latih_LVQ(input,validasi,bobot,n)
   learning_rate=n;
   [jumlahinput kolom]=size(input);
   [jumlahtarget kolom]=size(bobot);
   [jumlahvalidasi kolom]=size(validasi);
     
   max_epoh=1000;
   pengurangan_lr=0.1;
   min_error=0.0001;
   epoh=0;
   mse=1;

   while (epoh<max_epoh) && (learning_rate>min_error)       
        epoh= epoh+1;
        for i=1:jumlahinput
            % euclidean distance
            for j=1:jumlahtarget
                jarak(j,1)= sqrt(sum((input(i,1:kolom-1)-bobot(j,1:kolom-1)) .^ 2));
            end

            %mencari jarak terpendek
            [nilai urutan]=sort(jarak(:,1),'ascend');
            temptarget=urutan(1); %berada di baris berapa
            
            %pengubahan bobot                
            if input(i,kolom)==bobot(temptarget,kolom)
               bobot_baru=bobot(temptarget,1:kolom-1)+(learning_rate*(input(i,1:kolom-1)-bobot(temptarget,1:kolom-1)));
            else
                bobot_baru=bobot(temptarget,1:kolom-1)-(learning_rate*(input(i,1:kolom-1)-bobot(temptarget,1:kolom-1)));                
            end
            bobot(temptarget,1:kolom-1)=bobot_baru(1,:);
        end

        % mse
        mse_total(epoh,1)=mse_LVQ(input,bobot);

        % update lr
        learning_rate=learning_rate-(pengurangan_lr*learning_rate);
   
        %validasi
        mse_total(epoh,2)=mse_LVQ(validasi,bobot);
        %menyimpan bobot setiap epoh
        Simpan_bobot{epoh,1}=bobot;       
   end
   
    
   
   %cari mse terendah pada validasi
   [nilaival urutan]=sort(mse_total(:,2),'ascend');
   mse_validasi=find(mse_total(:,2)==mse_total(urutan(1),2)); %terendah berada di baris berapa
   
   %cari mse terendah pada datalatih berdasarkan mse validasi terendah
   mse_latih(:,1)=mse_total(mse_validasi,1); %ambil nilai mse_latih yg mana mse validasinya terkecil
   mse_latih(:,2)=mse_validasi(:,1); %baris pada mse_latih
   [nilailat urutan]=sort(mse_latih(:,1),'ascend'); %sort mse_latih
   
   %mse_latih terkecil berada di baris berapa aja
   mse_terendah=find(mse_latih(:,1)==mse_latih(urutan(1),1));
   mse_latih1=mse_latih(mse_terendah,2);
   
   size1=max(mse_latih1(:,1)); %ambil epoh terakhir
   
   bobot_mse_terandah=Simpan_bobot{size1,1};
   
   hasil{1,1}=bobot_mse_terandah;
   latih_LVQ=hasil;
end