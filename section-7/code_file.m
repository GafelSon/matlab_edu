% Soheil Fouladvandi
% Section (7)

%{
conditions and loops are fundamental for 
controlling the flow of your program.
They allow you to make decisions (conditionals) and repeat actions (loops).
%}

% 1. Conditionals
%   Conditionals allow you to execute specific blocks of code based on certain conditions. The most common conditional statements in MATLAB are if, else, and elseif.

%   1.1. if Statement
%     The if statement is used to execute a block of code only
%     if a specific condition is true.
x = 5;
if x > 0
    disp('x is positive');
end

%   1.2. else Statement
%     The else statement is used to execute a block of code when the
%     if condition is not true.
x = -3;
if x > 0
    disp('x is positive');
else
    disp('x is negative or zero');
end

%   1.3. elseif Statement
%     The elseif statement is used to check multiple conditions.
%     If the first condition is false, it checks the next condition.
x = 0;
if x > 0
    disp('x is positive');
elseif x == 0
    disp('x is zero');
else
    disp('x is negative');
end
