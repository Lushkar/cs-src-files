Fs = 1000; # Sampling Frequency
T = 1 / Fs;
L = 500;
t = (0:L - 1) * T;

c = cos(2 * pi * 50 * t);
m = square(2 * pi * 10 * t);
m = (m + 1) ./ 2;

s = m .* c;

S = fft(s);
M = fft(m);
C = fft(c);

P2S = abs(S / L);
P1S = P2S(1: L/2 + 1);

P2M = abs(M / L);
P1M = P2M(1: L/2 + 1);

P2C = abs(C / L);
P1C = P2C(1: L/2 + 1);

f = Fs * (0: (L/2))/ L;