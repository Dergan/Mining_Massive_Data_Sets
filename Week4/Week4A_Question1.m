%% Week 4A Question1
clear all
close all
clc

A = [1 2 3 4 5];
B = [2 3 2 5 3];
C = [5 5 5 3 2];

profile = [A ; B ; C];

meanRow = mean(profile');
meanRow = [meanRow' meanRow' meanRow' meanRow' meanRow'];
normRow = profile-meanRow;

meanCol = mean(normRow);
meanCol = [meanCol ; meanCol ; meanCol];
normRowCol = normRow-meanCol