%% Week1 Question3
clear all
close all
clc

beta = 1;
M = [0 0 1;0.5 0 0;0.5 1 0];
A = beta.*M+(1-beta)*1/3*[1 1 1;1 1 1;1 1 1];
r = [1/3 ;1/3 ;1/3];
rIteration = [r];
for i = 1:50
    r = A*r;
    rIteration = [rIteration r];
end

rIteration3 = rIteration*3;

r4 = rIteration3(:,5)
rlimit = rIteration3(:,end)