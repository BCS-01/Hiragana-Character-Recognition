function test_tunggal=test_tunggal(i,eks)
    load terbaik.mat
    if i==1
        load LVQ1.mat
        bobot_LVQ1=hasil{1,1};
    elseif i==2
        load LVQ2.mat
        bobot_LVQ1=hasil{1,1};
    elseif i==3
        load LVQ3.mat
        bobot_LVQ1=hasil{1,1};
    elseif i==4
        load LVQ4.mat
        bobot_LVQ1=hasil{1,1};
    elseif i==5
        load LVQ5.mat
        bobot_LVQ1=hasil{1,1};
    elseif i==6
        load LVQ6.mat
        bobot_LVQ1=hasil{1,1};
    elseif i==7
        load LVQ7.mat
        bobot_LVQ1=hasil{1,1};
    end   
    test_tunggal=test_LVQ_ensemble(eks,bobot_LVQ1);
end