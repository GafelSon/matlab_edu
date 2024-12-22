% Soheil Fouladvandi
% Section (3)

%{
some important MATLAB functions like
size(), rand(), and randi() with examples
%}

clear;clc;close all;

% 1. size()
%   The size() function returns the dimensions of an array (number of rows and columns).
dims = size(A);          % Returns a vector with [rows, columns]
rows = size(A, 1);       % Returns the number of rows
cols = size(A, 2);       % Returns the number of columns

%   Example:
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
dims = size(A);         % Returns [3, 3]
rows = size(A, 1);      % Returns 3 (rows)
cols = size(A, 2);      % Returns 3 (columns)

disp(['Rows: ', num2str(rows), ', Columns: ', num2str(cols)]);

% 2. rand()
%   The rand() function generates random numbers uniformly distributed between 0 and 1.
R = rand();            % Single random number
R = rand(n);           % n x n matrix of random numbers
R = rand(m, n);        % m x n matrix of random numbers

%   Example:
R1 = rand();           % Single random number (e.g., 0.5432)
R2 = rand(3);          % 3x3 matrix of random numbers
R3 = rand(2, 4);       % 2x4 matrix of random numbers

disp(R3);

% 3. randi()
%   The randi() function generates random integers within a specified range.
R = randi(max_val);                      % Random integer between 1 and max_val
R = randi([min_val, max_val]);           % Random integer in the range [min_val, max_val]
R = randi([min_val, max_val], m, n);     % m x n matrix of random integers

%   Example:
R1 = randi(10);              % Random integer between 1 and 10
R2 = randi([5, 15]);         % Random integer between 5 and 15
R3 = randi([1, 100], 3, 4);  % 3x4 matrix of random integers between 1 and 100

disp(R3);

%{
Comparison of rand() and randi()
 -----------------------------------------------------------------
| Feature        |	        rand()           |     randi()        |
 -----------------------------------------------------------------
| Output Type    |  Random numbers (decimal) |   Random integers  |
 -----------------------------------------------------------------
| Range          |	         [0, 1]          |                    |
|                | (default) or scaled range | [min_val, max_val] |
 -----------------------------------------------------------------
| Example Output |	   0.2354, 0.7543        |     3, 7, 12       |
 -----------------------------------------------------------------
%}


% Additional Functions to Know
%  length()
%   Returns the length of the largest dimension of an array.
A = [1, 2, 3; 4, 5, 6];
len = length(A);  % Returns 3 (largest dimension)

%  reshape()
%   Changes the shape of an array without altering its data.
A = 1:12;
B = reshape(A, [3, 4]);  % Reshapes into a 3x4 matrix

%  randn()
%   Generates random numbers with a normal (Gaussian) distribution.
R = randn(2, 3);  % 2x3 matrix with random numbers from a normal distribution



