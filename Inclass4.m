%AW: Looks good in general. See commments below. 0.89/1.

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 
%SS a.
fid=fopen('inclass4.txt', 'w');
fprintf(fid, 'Random numbers 1\n');
var=rand(10,13);
for i = 1:size(var,1)
    dlmwrite('inclass4.txt',var(i,:), '-append');
end
fclose(fid)
fid=fopen('inclass4.txt', 'a');
fprintf(fid, 'Random numbers 2\n');
var2=rand(9,7);
for i = 1:size(var2,1)
    dlmwrite('inclass4.txt',var2(i,:), '-append');
end
fclose(fid)
%SS b.
fin=fopen('inclass4.txt', 'r');
line1=fgetl(fin)
line2=fgetl(fin)
arr1=strsplit(line2, "\t")
%AW: this is all correct. Note that at the end, you still have a cell array of strings. Need to run
% something like arr1 = cellfun(@str2num,arr1) or run a loop and call str2num on each entry of arr1. -0.01

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

rand_array=randi([0,5],1, 5)
greater_10=sum(rand_array) >= 10

%AW: This is the correct operation, but it isn't written as a function. -.10. 
