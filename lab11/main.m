fm = 10; % frequency of message signal
fc1 = 50; fc2 = 20; % frequencies of carrier signals
Fs = 500; % Sampling frequency
T = 0.5; % Maximum time limit in sec


L = Fs * T;
t = linspace(0, T, L);

m = (square(2*pi*fm*t) + 1) / 2;

c1 = sin(2*pi*fc1*t);
c2 = sin(2*pi*fc2*t);

s = zeros(1, L);

% The Modulation Process
for i = 1:L
    if(m(i)==1)
        s(i)=c1(i);
    else
        s(i)=c2(i);
    end
end


% The Demodulation Process
m_ = zeros(1, length(m));
for i = 1:L
    if (s(i) == c1(i))
        m_(i) = 1;
    else
        m_(i) = 0;
    end
end

% Fourier transforms
M = fftshift(fft(m));
M = abs(M);

C1 = fftshift(fft(c1));
C1 = abs(C1);

C2 = fftshift(fft(c2));
C2 = abs(C2);

S = fftshift(fft(s));
S = abs(S);

M_ = fftshift(fft(m_));
M_ = abs(M_);

% Frequency axis
f = Fs * (-L/2:L/2-1)/ L;


% Plotting
figure(1)
subplot(3,1,1)
plot(t, m)
ylim([-0.2 1.2]);
title('The message signal');
xlabel('time (s)');

subplot(3,1,2)
plot(t, s)
ylim([-1.2 1.2]);
title('The modulated signal');
xlabel('time (s)');

subplot(3,1,3)
plot(t, m_)
ylim([-0.2 1.2]);
title('The demodulated signal');
xlabel('time (s)');

figure(2);
subplot(2, 1, 1)
plot(t, c1)
ylim([-1.2 1.2]);
title('Carrier signal 1');
xlabel('time (s)');

subplot(2, 1, 2)
plot(t, c2)
ylim([-1.2 1.2]);
title('Carrier signal 2');
xlabel('time (s)');

figure(3)
subplot(3, 1, 1);
plot(f, M);
xlabel('frequency (Hz)');
title('Double sided spectrum of Message signal')
ylabel('|M(f)|');

subplot(3, 1, 2);
plot(f, S);
xlabel('frequency (Hz)');
title('Double sided spectrum of Modulated signal')
ylabel('|S(f)|');

subplot(3, 1, 3);
plot(f, M_);
xlabel('frequency (Hz)');
title('Double sided spectrum of Demodulated signal')
ylabel('|M''(f)|');

figure(4)
subplot(2, 1, 1);
plot(f, C1);
xlabel('frequency (Hz)');
title('Double sided spectrum of Carrier signal 1')
ylabel('|C_1(f)|');

subplot(2, 1, 2);
plot(f, C2);
xlabel('frequency (Hz)');
title('Double sided spectrum of Carrier signal 2')
ylabel('|C_2(f)|');