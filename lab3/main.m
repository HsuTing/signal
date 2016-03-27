clear all;

[data, fs] = audioread('arena.wav');

output = conv(data, fs);

subplot(2,1,1); plot(data); title('input');
subplot(2,1,2); plot(output); title('output');

sound(output);