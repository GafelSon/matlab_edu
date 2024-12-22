% Soheil Fouladvandi
% Section (4)

%{
A matrix is a fundamental data type in MATLAB that represents 2D arrays.
MATLAB also supports 3D arrays for representing multi-dimensional data.
%}

clear;clc;close all;

% 1. Creating Matrices
%   2D Matrices
%     A 2D matrix is created using square brackets [] with rows separated by semicolons ;.
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];  % 3x3 matrix
disp(A);

%   3D Matrices
%     A 3D matrix is created by stacking multiple 2D matrices along a third dimension.
B(:, :, 1) = [1, 2; 3, 4];  % First 2D matrix (slice 1)
B(:, :, 2) = [5, 6; 7, 8];  % Second 2D matrix (slice 2)
disp(B);

% 2. Accessing Elements
%   2D Matrices
%     Use (row, column) indexing.
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
value = A(2, 3);  % Access element in 2nd row, 3rd column (6)
row = A(2, :);    % Entire 2nd row [4, 5, 6]
col = A(:, 3);    % Entire 3rd column [3; 6; 9]

%  3D Matrices
%    Use (row, column, slice) indexing.
value = B(2, 1, 2);  % Access element at (row 2, col 1, slice 2)
slice = B(:, :, 1);  % Entire first slice

% 3. Operations on Matrices
%   Matrix Addition and Subtraction
%     Add or subtract matrices of the same size element-wise.
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];
C = A + B;  % [6, 8; 10, 12]
D = A - B;  % [-4, -4; -4, -4]

%   Matrix Multiplication
%     Use * for matrix multiplication.
%     Use .* for element-wise multiplication.
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];
C = A * B;    % Matrix multiplication
D = A .* B;   % Element-wise multiplication

%   Transpose
%   Switch rows and columns.
A = [1, 2, 3; 4, 5, 6];
AT = A';  % Transpose

% 4. Useful Functions for Matrices
%   2D Matrices
%     size(A):   Dimensions of the matrix.
%     length(A): Length of the largest dimension.
%     sum(A):    Sum of elements in each column.
%     mean(A):   Mean of each column.
%     det(A):    Determinant (for square matrices).
%     inv(A):    Inverse (for square matrices).
A = [1, 2; 3, 4];
disp(size(A));    % [2, 2]
disp(det(A));     % Determinant
disp(inv(A));     % Inverse

%   3D Matrices
%     size(B): Dimensions of the matrix.
%     squeeze(B): Removes singleton dimensions.
%     cat(dim, A1, A2, ...): Concatenates along a specified dimension.
B = cat(3, [1, 2; 3, 4], [5, 6; 7, 8]);  % Concatenate along the 3rd dimension
disp(size(B));    % [2, 2, 2]

% 5. Reshaping and Transforming
%   Reshape:
%     Change the size of a matrix while retaining the data.
A = 1:12;
B = reshape(A, [3, 4]);  % Reshape into 3x4 matrix

%   Flatten:
%     Convert a 2D/3D matrix to a 1D vector.
A = [1, 2; 3, 4];
V = A(:);  % [1; 3; 2; 4]

% 6. Advanced Indexing
%   Logical Indexing:
%     Use conditions to extract specific elements.
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B = A(A > 5);  % [6, 7, 8, 9]

%   Find:
%     Get indices of elements satisfying a condition.
idx = find(A > 5);  % Indices of elements > 5

% 7. Visualization of 3D Matrices
%   3D matrices can be visualized slice by slice or as a 3D plot.

%   Slice Visualization:
B(:, :, 1) = [1, 2; 3, 4];
B(:, :, 2) = [5, 6; 7, 8];
disp(B(:, :, 1));  % Display slice 1
disp(B(:, :, 2));  % Display slice 2

%   3D Surface Plot:
[X, Y] = meshgrid(1:10, 1:10);
Z = sin(X) + cos(Y);
surf(X, Y, Z);  % Create a 3D surface plot











