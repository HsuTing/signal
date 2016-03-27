clear all;

[xIn, xfs] = audioread('cat.wav', [1, 16963]);
[hIn, hfs] = audioread('arena.wav', [1, 16963]);

x = xIn(:, 1);
h = hIn(:, 1);

n = length(x);
k = length(h);

x1 = [x, zeros(k, 1)];
h1 = [h, zeros(n, 1)];
for i = 1:n + k -1
     y(i) = 0;
     for j = 1:n
         if(i - j + 1 > 0)
             y(i) = y(i) + x1(j) * h1(i - j + 1); 
             m(i) = y(i);
         else
         end 
     end
end

for i = 1: n
    output(i) = m(i);
end

sound(output);