function jumlah_kode_arah_hasil=jumlah_kode_arah(baris,kolom,image,kode_arah,lebar,area)
  area=area+1;
  baristmp=baris;
  kolomtmp=kolom;
  lebartmp=lebar;
  jumlah_sebelumnya=0;
  
  % rekursif sampai area 4; area 4 = area paling kecil
  if area~=4
      baristmp=baristmp+2;
      kolomtmp=kolomtmp+2;
      lebartmp=lebartmp-4;
      jumlah_sebelumnya=jumlah_kode_arah(baristmp,kolomtmp,image,kode_arah,lebartmp,area);
  end
  
  % mencari jumlah kode arah sesuai area
  jumlah_kode=0;
  for i=baris:baris+lebar-1
      for j=kolom:kolom+lebar-1
          if area==4 %area 4 / paling kecil
            if image(i,j)==kode_arah
                jumlah_kode=jumlah_kode+1;
            end
          else %area 1,2 dan 3
            if (i>=baris+2 && i<=baris+lebar-3) && (j>=kolom+2 && j<=kolom+lebar-3)%tidak termasuk area               
                continue;
            else
                if image(i,j)==kode_arah %termasuk area
                    jumlah_kode=jumlah_kode+1;
                end
            end
          end
      end
  end
  
  jumlah_kode_arah_hasil = jumlah_sebelumnya+(jumlah_kode*area);
end
