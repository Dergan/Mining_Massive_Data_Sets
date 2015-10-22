%% Week 4 Lecture Notes
clear all
close all
clc

%  Item-Item CF (|N|=2)
R = [1 0 3 0 0 5 0 0 5 0 4 0; ...
     0 0 5 4 0 0 4 0 0 2 1 3; ...
     2 4 0 1 2 0 3 0 4 3 5 0; ...
     0 2 4 0 5 0 0 4 0 0 2 0; ...
     0 0 4 3 4 2 0 0 0 0 2 5; ...
     1 0 3 0 3 0 0 2 0 0 4 0];

%% Pearson Correlation
sumRows   = zeros(size(R,1),1);
meanRows  = zeros(size(R,1),1);
countRows = zeros(size(R,1),1);
normalizedRow = zeros(size(R,1),size(R,2));
sim1m = zeros(size(R,1),1);

% Find mean rating m_i for each movie
for i = 1:size(R,1)    
    for j = 1:size(R,2)
       if (R(i,j)~=0)
           countRows(i) = countRows(i) + 1;
           sumRows(i)   = sumRows(i) + R(i,j);
       end
    end
    meanRows(i) = sumRows(i)/countRows(i);
end

% Subtract mean rating m_i from each movie i
for i = 1:size(R,1)    
    for j = 1:size(R,2)
       if (R(i,j)~=0)
           normalizedRow(i,j) = R(i,j)-meanRows(i);
       end
    end
end

% Compute cosine similarity
for i=1:size(R,1)
    sim1m(i)=dot(normalizedRow(1,:),normalizedRow(i,:))...
        /(norm(normalizedRow(1,:))*norm(normalizedRow(i,:)));
end

sim1m
