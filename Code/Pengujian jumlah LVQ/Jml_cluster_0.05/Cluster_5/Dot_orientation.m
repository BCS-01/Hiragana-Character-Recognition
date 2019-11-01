function Dot_orientation=Dot_orientation(Image)
      [baris kolom]=size(Image);
      
      %menambahkan piksel pada setiap sisi
      %piksel tambahan diberi nilai 10
      tempImage=zeros(baris+2,kolom+2);
      tempImage(:,:)=10;
      tempImage(2:baris+1,2:kolom+1)=Image;
      
      %%pemberian kode arah pada setiap contour
      newImage=zeros(baris+2,kolom+2);
      for x=2:baris+1
          for y=2:kolom+1
            if tempImage(x,y)==0
              x1=tempImage(x-1,y-1);
              x2=tempImage(x-1,y);
              x3=tempImage(x-1,y+1);
              x4=tempImage(x,y+1);
              x5=tempImage(x+1,y+1);
              x6=tempImage(x+1,y);
              x7=tempImage(x+1,y-1);
              x8=tempImage(x,y-1);
              newImage(x,y)=matrix_neighbor(x1,x2,x3,x4,x5,x6,x7,x8);
            else
              newImage(x,y)=tempImage(x,y);
            end
           end
      end
      
      %%menghapus piksel pada garis tepi
      Image=newImage(2:baris+1,2:kolom+1);
      Dot_orientation = Image;
end
