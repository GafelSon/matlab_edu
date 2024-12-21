% Soheil Fouladvandi
% Section (1)

%{
Learning MATLAB is a great choice, especially if you want to
work on numerical computation, data analysis, visualization, or
engineering tasks.
%}


% This is should use every time in every code!!!

clear all;  % Reset everything (-all- in unnecessary!)
clc;        % Clear the console
close all;  % Close any figures

% For execution click on (Run Section)[alt+F5]
% Format file that matlab use is (.m)


% 1. Values can be viewed as a matrix or array.
%    Example:
A = [1, 2; 3, 4];  % This creates a 2x2 matrix.
disp(A);           % Displays the matrix in the command window.

% 2. Removing the semicolon (;) at the end of a line displays the output.
% x = 5    % No output
y = 10;  % Output is displayed because there's no semicolon.

% 3. MATLAB is case-sensitive.
%    Variables `a` and `A` are different.
a = 5;
A = 10;

% 4. Pressing [TAB] auto-completes function names and variable names.
%    Start typing, then press [TAB] for suggestions.

% 5. To see a list of all MATLAB reserved keywords:
disp(iskeyword);  % Returns a list of keywords.

% 6. Variable naming rules:
%    - Variable names cannot start with a number.
%    - Example:
%      2a -> Error
%      a2 -> Correct

% 7. To add comments in MATLAB, use `%`.
%    Example:
%    This is a single-line comment.
