fm = 10; % frequency of message signal
fc1 = 50; fc2 = 20; % frequencies of carrier signals
Fs = 500; % Sampling frequency
T = 0.5; % Maximum time limit in sec

t = linspace(0, T, Fs*T);

m = (square(2*pi*fm*t) + 1) / 2;

c1 = sin(2*pi*fc1*t);
c2 = sin(2*pi*fc2*t);

s = zeros(1, Fs*T);

% The Modulation Process
for i = 1:Fs*T
    if(m(i)==1)
        s(i)=c1(i);
    else
        s(i)=c2(i);
    end
end


% The Demodulation Process
m_ = zeros(1, length(m));
for i = 1:Fs*T
    if (s(i) == c1(i))
        m_(i) = 1;
    else
        m_(i) = 0;
    end
end

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
