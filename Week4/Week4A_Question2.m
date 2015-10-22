%% Week 4A Question2
clear all
close all
clc

%%  Profile of Three Items with alpha = 0
alpha = 0;
R = [1 0 1 0 1 2*alpha; ...
     1 1 0 0 1 6*alpha; ...
     0 1 0 1 0 2*alpha];

 sim1m = zeros(size(R,1),1);
sim2m = zeros(size(R,1),1);
sim3m = zeros(size(R,1),1);

% Compute cosine similarity
for i=1:size(R,1)
    sim1m(i)=dot(R(1,:),R(i,:))...
        /(norm(R(1,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim2m(i)=dot(R(2,:),R(i,:))...
        /(norm(R(2,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim3m(i)=dot(R(3,:),R(i,:))...
        /(norm(R(3,:))*norm(R(i,:)));
end

fprintf('\n \nalpha = %d ',alpha)
cosineDist = [sim1m sim2m sim3m]


%%  Profile of Three Items with alpha = 0.5
alpha = 0.5;
R = [1 0 1 0 1 2*alpha; ...
     1 1 0 0 1 6*alpha; ...
     0 1 0 1 0 2*alpha];

 sim1m = zeros(size(R,1),1);
sim2m = zeros(size(R,1),1);
sim3m = zeros(size(R,1),1);

% Compute cosine similarity
for i=1:size(R,1)
    sim1m(i)=dot(R(1,:),R(i,:))...
        /(norm(R(1,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim2m(i)=dot(R(2,:),R(i,:))...
        /(norm(R(2,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim3m(i)=dot(R(3,:),R(i,:))...
        /(norm(R(3,:))*norm(R(i,:)));
end

fprintf('\n \nalpha = %d ',alpha)
fprintf('\nAccording to answers cos(A,C)=0.08 and not 0.287')
cosineDist = [sim1m sim2m sim3m]

%%  Profile of Three Items with alpha = 1
alpha = 1;
R = [1 0 1 0 1 2*alpha; ...
     1 1 0 0 1 6*alpha; ...
     0 1 0 1 0 2*alpha];

 sim1m = zeros(size(R,1),1);
sim2m = zeros(size(R,1),1);
sim3m = zeros(size(R,1),1);

% Compute cosine similarity
for i=1:size(R,1)
    sim1m(i)=dot(R(1,:),R(i,:))...
        /(norm(R(1,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim2m(i)=dot(R(2,:),R(i,:))...
        /(norm(R(2,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim3m(i)=dot(R(3,:),R(i,:))...
        /(norm(R(3,:))*norm(R(i,:)));
end

fprintf('\n \nalpha = %d',alpha)
cosineDist = [sim1m sim2m sim3m]

%%  Profile of Three Items with alpha = 2
alpha = 2;
R = [1 0 1 0 1 2*alpha; ...
     1 1 0 0 1 6*alpha; ...
     0 1 0 1 0 2*alpha];

sim1m = zeros(size(R,1),1);
sim2m = zeros(size(R,1),1);
sim3m = zeros(size(R,1),1);

% Compute cosine similarity
for i=1:size(R,1)
    sim1m(i)=dot(R(1,:),R(i,:))...
        /(norm(R(1,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim2m(i)=dot(R(2,:),R(i,:))...
        /(norm(R(2,:))*norm(R(i,:)));
end
for i=1:size(R,1)
    sim3m(i)=dot(R(3,:),R(i,:))...
        /(norm(R(3,:))*norm(R(i,:)));
end

fprintf('\n \nalpha = %d',alpha)
cosineDist = [sim1m sim2m sim3m]


