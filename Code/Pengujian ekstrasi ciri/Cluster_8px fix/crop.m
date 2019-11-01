function crop=crop(Image)
      [baris,kolom]=size(Image);
      
      %mengecak semua koordinat pixel bernilai 0
      x=1;
      for i=1:baris
         for j=1:kolom
             if Image(i,j)==0
                koordinat(x,1)=i;
                koordinat(x,2)=j;
                x=x+1;
             end             
         end
      end
      
      %Mencari batas
      barismin = min(koordinat(:,1));
      barismax = max(koordinat(:,1));
      kolommin = min(koordinat(:,2));
      kolommax = max(koordinat(:,2));
      
      %melakukan cropping
      Imagenew=Image(barismin:barismax,kolommin:kolommax);
      crop = Imagenew;
end
