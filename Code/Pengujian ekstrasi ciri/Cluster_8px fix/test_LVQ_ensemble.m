function test_LVQ_ensemble=test_LVQ_ensemble(input,bobot)
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
        
    test_LVQ_ensemble=[nilai(1),bobot(temptarget,197)];
end
