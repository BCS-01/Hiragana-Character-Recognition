clc
clear all

[x,t] = iris_dataset;
net = lvqnet(3,0.1);
net = configure(net,x,t);
net.IW{1};
net.trainParam.epochs = 5;
[net,Y,E,Pf,Af,tr] = train(net,x,t);
y = net(x);
perf = perform(net,y,t)
classes = vec2ind(y);
o=0;
for ii=1:150
      if ismember(1,Pf(:,ii)) || ismember(-1,Pf(:,ii)) 
       o=o+1;
      end
end
