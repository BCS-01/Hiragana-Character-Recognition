function contour_extraction=contour_extraction(Image)
      [baris kolom]=size(Image);
      
      %menambahkan piksel pada setiap sisi
      %piksel tambahan diberi nilai 3
      tempImage=zeros(baris+2,kolom+2);
      tempImage(:,:)=10;
      tempImage(2:baris+1,2:kolom+1)=Image;
      
      %pengecekan contour
      %apabila piksel atas,kiri,bawah,kanan bernilai 1, maka piksel yg
      %dicek termasuk contour; yg tdk termasuk contour, piksel diberi nilai 1
      for x=2:baris+1
         for y=2:kolom+1
             if (tempImage(x,y)==0 && (tempImage(x-1,y)==1 || tempImage(x,y-1)==1 || tempImage(x+1,y)==1 || tempImage(x,y+1)==1 ))
                newImage(x-1,y-1)=0;               
             else
                newImage(x-1,y-1)=1;
             end
         end
      end    
      contour_extraction=newImage;
end
