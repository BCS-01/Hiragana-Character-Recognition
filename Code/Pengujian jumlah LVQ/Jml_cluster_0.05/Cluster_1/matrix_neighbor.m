function matrix_neighbor=matrix_neighbor(x1,x2,x3,x4,x5,x6,x7,x8)
      if(x1==0)
         kode_Arah=2;
      elseif (x2==0)
         kode_Arah=3;
      elseif (x3==0)
         kode_Arah=4; 
      elseif (x4==0)
         kode_Arah=5; 
      elseif (x5==0)
         kode_Arah=2; 
      elseif (x6==0)
         kode_Arah=3; 
      elseif (x7==0)
         kode_Arah=4; 
      elseif (x8==0)
         kode_Arah=5;
      else
         kode_Arah=0; 
      end
      matrix_neighbor = kode_Arah;
end
