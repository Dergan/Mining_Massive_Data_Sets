%% Week1 Question1
clear all
close all
clc

beta = 0.7;
M = [0 0 0;0.5 0 0;0.5 1 1];
A = beta.*M+(1-beta)*1/3*[1 1 1;1 1 1;1 1 1];
r = [1/3 ;1/3 ;1/3];
rIteration = [r];
for i = 1:5
    r = A*r;
    rIteration = [rIteration r];
end

rIteration
rsum3 = rIteration.*3