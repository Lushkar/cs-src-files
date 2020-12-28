fm = 10;
fc1 = 50; fc2 = 20;
Fs = 500;
T = 0.5;

t = linspace(0, T, Fs*T);

m = (square(2*pi*fm*t) + 1) / 2;

figure(1)
plot(t,m);
ylim([-0.2, 1.2]);


c1 = sin(2*pi*fc1*t);
c2 = sin(2*pi*fc2*t);

s = zeros(1, Fs*T);
for i = 1:Fs*T
    if(m(i)==1)
        s(i)=c1(i);
    else
        s(i)=c2(i);
    end
end

figure(2)
plot(t, s)
