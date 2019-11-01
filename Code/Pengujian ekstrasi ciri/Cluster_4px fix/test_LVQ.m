function test_LVQ=test_LVQ(input,bobot)
    [jumlahinput kolom]=size(input);
    [jumlahtarget kolom]=size(bobot);
        jml=0;
        for i=1:jumlahinput
            % euclidean distance
            for j=1:jumlahtarget
                jarak(j,1)= sqrt(sum((input(i,1:kolom-1)-bobot(j,1:kolom-1)) .^ 2));
            end

            %mencari jarak terpendek
            [nilai urutan]=sort(jarak(:,1),'ascend');
            temptarget=urutan(1);
            
        end  
        
    test_LVQ= bobot(temptarget,101);
end
