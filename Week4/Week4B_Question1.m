%% Week4B Question1
clear all
close all
clc

Q = [2/7, 3/7, 6/7];

S1 = [-0.286, -.429, .857];
S2 = [-0.702, .117, .702];
S3 = [0.312, .156, -.937];
S4 = [0.728, .485, -.485];



S1n = norm(S1)
A1 = Q*S1'

S2n = norm(S2)
A2 = Q*S2'

S3n = norm(S3)
A3 = Q*S3'

S4n = norm(S4)
A4 = Q*S4'

fprintf('Pick S#n = 1, A# = 0\n')