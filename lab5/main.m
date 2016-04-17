close all
clear all

fs = 44100
time = 0.5
t = 0: 1/ fs : time
f = 100
x = sin(2 * pi * f * t)

othres = zeros(11,1)
for i = 1: 11
    others(i) = 50 + 10 * ( i - 1 )
end

plot(x + sin(2 * pi * others(1) * t))
now = 1
while 1
    now = now + 1
    if now > 11
        now = 1
    end
    y = x + sin(2 * pi * others(now) * t)
    plot(y)
    pause(1)
end