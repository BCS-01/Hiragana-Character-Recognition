function mse_LVQ=mse_LVQ(input,bobot)
    [jumlahinput kolom]=size(input);
    [jumlahtarget kolom]=size(bobot);
        error=0;
        for i=1:jumlahinput
            % euclidean distance
            for j=1:jumlahtarget
                jarak(j,1)= sqrt(sum((input(i,1:kolom-1)-bobot(j,1:kolom-1)) .^ 2));
            end

            %mencari jarak terpendek
            [nilai urutan]=sort(jarak(:,1),'ascend');
            temptarget=urutan(1);
            
            if input(i,kolom)~=bobot(temptarget,kolom)
                %error
                temp_error=2;
                error=error+temp_error;
            end
        end  
        
        % mse
        mse=error/(jumlahinput*jumlahtarget);
        
    mse_LVQ=mse;
end

