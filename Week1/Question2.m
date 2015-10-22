%% Week1 Question2
clear all
close all
clc

beta = 0.85;
M = [0 0 1;0.5 0 0;0.5 1 0];
A = beta.*M+(1-beta)*1/3*[1 1 1;1 1 1;1 1 1];
r = [1/3 ;1/3 ;1/3];
rIteration = [r];
for i = 1:50
    r = A*r;
    rIteration = [rIteration r];
end

rIteration

r = rIteration(:,end)