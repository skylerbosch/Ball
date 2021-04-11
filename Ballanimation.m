%ball animation
%clear command window and work space
clc;
clear; 
close all;
%% Rendering background Sky

%creating background
%blue sky
fill([1 1 10 10], [1 10 10 1], [0.3010, 0.7450,0.9330]);
axis([1 10 1 10]);
hold on;

%% Rendering background grass

%creating background
%green grass
fill([1 1 10 10], [1 2 2 1], [0.4660, 0.6740, 0.1880]);

%% Rendering circle

% Create motion data -- (1)
t = 0:0.001:1;   % Time data
x = 10*t; % Position data

% Draw initial figure -- (2)
figure(1);
h = plot(x(1), 2.5, 'o', 'MarkerSize' ,60, 'MarkerFaceColor', 'k');
xlim([1, 10]);
ylim([1, 10]);

% Animation loop -- (3)
for i = 1:length(x)
    set(h, 'XData', x(i));
    drawnow;
end

    