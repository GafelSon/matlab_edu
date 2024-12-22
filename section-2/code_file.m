% Soheil Fouladvandi
% Section (2)

%{
Arrays are one of the most fundamental data structures in MATLAB. 
They can represent scalars, vectors, matrices, and higher-dimensional data.
%}

clear;clc;close all;

% 1. Types of Arrays

%   Scalar:
%     A single number (1x1 array).
x = 5;  % A scalar

%   Vector:
%     A 1D array. Can be a row or a column vector.
row_vector = [1, 2, 3];      % Row vector
col_vector = [1; 2; 3];      % Column vector

%   Matrix:
%     A 2D array with rows and columns.
matrix = [1, 2, 3; 4, 5, 6; 7, 8, 9];  % 3x3 matrix

%   Multidimensional Array:
%     Higher-dimensional arrays.
multi_array = rand(3, 3, 3);  % 3x3x3 array

% 2. Creating Arrays

%   Manually:
%     Use square brackets [] to define arrays.
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];  % 3x3 matrix

% Using Functions:
%     zeros: Create an array of zeros.
%     ones: Create an array of ones.
%     rand: Create an array with random values (0 to 1).
%     eye: Create an identity matrix.
Z = zeros(3, 3);         % 3x3 matrix of zeros
O = ones(2, 4);          % 2x4 matrix of ones
R = rand(3, 3);          % 3x3 matrix with random values
I = eye(3);              % 3x3 identity matrix

% Using Colon Operator:
%   Generate sequences.
x = 1:10;                % Creates [1, 2, ..., 10]
y = 0:0.5:5;             % Creates [0, 0.5, 1, ..., 5]

% Using linspace:
%   Generate a specific number of evenly spaced points.
L = linspace(0, 10, 5);  % [0, 2.5, 5, 7.5, 10]

% 3. Accessing Array Elements
%   Indexing:
%     Use parentheses () for accessing elements (MATLAB uses 1-based indexing).
A = [10, 20, 30; 40, 50, 60; 70, 80, 90];
val = A(2, 3);           % Access row 2, column 3 (60)

%   Slicing:
%     Extract parts of an array.
row = A(2, :);           % Entire 2nd row
col = A(:, 3);           % Entire 3rd column
sub = A(1:2, 2:3);       % Rows 1-2 and Columns 2-3

% 4. Modifying Arrays
%   Replace Elements:
A(1, 2) = 100;           % Change row 1, col 2 to 100

%   Add Rows or Columns:
A = [A; [11, 12, 13]];   % Add a new row

%   Delete Rows or Columns:
A(2, :) = [];            % Remove the 2nd row

% 5. Array Operations

%   Element-Wise Operations:
%     Use .*, ./, or .^ for element-wise multiplication, division, or power.
A = [1, 2, 3];
B = [4, 5, 6];
C = A .* B;  % Element-wise multiplication

%   Matrix Operations:
%     Use * for matrix multiplication.
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];
C = A * B;               % Matrix multiplication

% 6. Array Functions

%   size: Dimensions of the array.
%   length: Largest dimension.
%   sum: Sum of elements.
%   mean: Mean of elements.
%   max, min: Maximum and minimum values.
A = [1, 2, 3; 4, 5, 6];
disp(size(A));           % [2, 3]
disp(sum(A));            % Sum of each column
disp(mean(A, 2));        % Mean of each row

% 7. Advanced Topics

%   Logical Indexing:
%   Extract elements that meet a condition.
A = [10, 20, 30, 40];
B = A(A > 20);           % Elements greater than 20

%   Reshaping Arrays:
A = 1:12;
B = reshape(A, [3, 4]);  % Reshape into 3x4 matrix

%   Transposing Arrays:
A = [1, 2, 3; 4, 5, 6];
B = A';                  % Transpose matrix

