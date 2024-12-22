% Soheil Fouladvandi
% Section (8)

%{
conditions and loops are fundamental for 
controlling the flow of your program.
They allow you to make decisions (conditionals) and repeat actions (loops).
%}

% 2. Loops
%   Loops allow you to execute a block of code multiple times.
%   There are two primary types of loops in MATLAB: for and while.

%   2.1. for Loop
%     The for loop is used when you know the number of iterations in advance.
%     It repeats a block of code a specific number of times.
for i = 1:5
    disp(['Iteration number: ', num2str(i)]);
end

%   2.2. while Loop
%     The while loop is used when you want to repeat a block
%     of code as long as a condition is true. The number of iterations
%     is not known beforehand.
x = 1;
while x <= 5
    disp(['Current value of x: ', num2str(x)]);
    x = x + 1;  % Increment x by 1
end

% 3. Breaking Out of Loops
%   Sometimes, you might want to stop a loop early.
%   You can use the break statement to exit a loop before
%   it completes all iterations.
for i = 1:10
    if i == 6
        break;  % Exit the loop when i is 6
    end
    disp(i);
end

% 4. Continuing to the Next Iteration
%   If you want to skip the current iteration and
%   continue with the next one, you can use the continue statement.
for i = 1:10
    if mod(i, 2) == 0
        continue;  % Skip even numbers
    end
    disp(i);  % Display odd numbers
end


%{
Summary:

if / elseif / else: Used for conditional execution based on logical conditions.
for loop: Used for iterating over a specific range or number of times.
while loop: Used for repeating code as long as a condition is true.
break: Used to exit a loop prematurely.
continue: Skips the current iteration and moves to the next one.
%}
