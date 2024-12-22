% Soheil Fouladvandi
% Section (6)

%{
In MATLAB, plotting and drawing charts are essential for 
visualizing data, making it easier to interpret and analyze.
%}

% 1. Basic Plotting
%   You can create 2D plots using the plot() function.
%   This is useful for plotting mathematical
%   functions, data series, and other types of data.

%   Example:
x = 0:0.1:10;         % Define x values
y = sin(x);           % Define y values as the sine of x
plot(x, y);           % Plot y vs. x
xlabel('X Axis');     % Label x-axis
ylabel('Y Axis');     % Label y-axis
title('Sine Wave');   % Title of the plot
grid on;              % Display grid

% x and y represent the data points to be plotted.
% The xlabel(), ylabel(), and title() functions are used to add labels
% and a title to the plot.
% grid on adds grid lines to the plot for better readability.

% 2. Line and Marker Customization
%   You can modify the appearance of the plot by changing the line style, 
%   marker type, and color.
plot(x, y, '-.r', 'LineWidth', 2, 'Marker', 'o', 'MarkerFaceColor', 'blue');

%  -.r specifies a red dash-dot line style.
%  LineWidth controls the thickness of the line.
%  Marker and MarkerFaceColor are used to customize the points
%  where the line intersects the data.

% 3. Multiple Plots in One Figure
%  You can overlay multiple plots on the same figure
%  using the hold on command.
y2 = cos(x);               % Define y2 values as cosine of x
plot(x, y, 'r');           % Plot sine curve in red
hold on;                   % Hold the current plot
plot(x, y2, 'b');          % Plot cosine curve in blue
hold off;                  % Release hold to add new plots separately
legend('Sine', 'Cosine');  % Add a legend

% The legend() function labels the lines in the plot for easier identification.

% 4. Subplots
%   You can display multiple plots in the same
%   figure window using subplot().
%   This is useful when you want to compare different datasets side by side.
subplot(2, 1, 1);      % Create a subplot grid with 2 rows, 1 column, and select the first plot
plot(x, y);            % Plot sine
title('Sine Wave');

subplot(2, 1, 2);      % Select the second plot
plot(x, y2);           % Plot cosine
title('Cosine Wave');

% subplot(m, n, p) divides the figure into a grid of m rows and n columns,
% and p specifies which subplot to use.

% 5. Scatter Plot
%    A scatter plot shows the relationship between two sets of data points.

x = randn(1, 100);       % Generate random data for x
y = randn(1, 100);       % Generate random data for y
scatter(x, y);           % Create a scatter plot
xlabel('X');
ylabel('Y');
title('Scatter Plot Example');

% scatter() plots individual points based on their x and y coordinates.


