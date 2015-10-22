%% Week 5B Question2
clear all
close all
clc

points = [5,10; ...
          20,5; ...
          ...
          7,12; ... % Yellow: UL
          12,8; ... % Yellow: LR
          16,19; ...% Blue: UL
          25,12; ...% Blue: LR
          ...
          7,8; ... % Yellow: UL
          12,5; ... % Yellow: LR
          13,10; ...% Blue: UL
          16,4; ...% Blue: LR
          ...
          6,15; ... % Yellow: UL
          13,7; ... % Yellow: LR
          16,16; ...% Blue: UL
          18,5; ...% Blue: LR
          ...
          7,12; ... % Yellow: UL
          12,8; ... % Yellow: LR
          16,16; ...% Blue: UL
          18,5; ...% Blue: LR
          ...          
];

clusters = [5,10; ...
            20,5];

% ClusterIndex(i,1) is number of points in cluster i
% ClusterIndex(i,2) is sum of (position of X) in cluster i
% ClusterIndex(i,3) is sum of (position of Y) in cluster i
ClusterIndex = zeros(size(clusters,1),3);PointIndex = [];
    
for i = 1:size(points,1)
    cluster_distance = [0,inf];
    for j = 1:size(clusters,1)
        distCal = sqrt((points(i,1)-clusters(j,1))^2+...
                      (points(i,2)-clusters(j,2))^2);
        if distCal <= cluster_distance(2)
            cluster_distance(1) = j;
            cluster_distance(2) = distCal;
        end
    end
    PointIndex = [PointIndex; cluster_distance(1), i];
end

PointIndex


    
