function def=def(Image)
      %%menentukan contour extraction
      hasil_contour_extraction=contour_extraction(Image);
      %%menenetukan kode arah
      hasil_Dot_orientation=Dot_orientation(hasil_contour_extraction);
      %%menentukan vektor
      hasil_vector_construction=vector_construction(hasil_Dot_orientation);     
      def =  hasil_vector_construction;
end
