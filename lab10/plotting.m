subplot(3, 2, 1);
plot(t, c);
title('Carrier signal wrt time')
xlabel('time (t)');
ylabel('Displacement');
ylim([-1.2 1.2]);
xlim([0 t(end)]);

subplot(3, 2, 2);
plot(f, P1C);
title('Single Sided Amplitude Spectrum of C(f)');
xlabel('f (Hz)');
ylabel('|P1C(f)|');
ylim([0 0.55]);


subplot(3, 2, 3);
plot(t, m);
title('Message signal wrt time');
xlabel('time (t)');
ylabel('Displacement');
ylim([-0.5 1.5]);
xlim([0 t(end)]);


# Setting the x-axis manually to show a spike on 50Hz
subplot(3, 2, 4);
plot(f, P1M);
title('Single Sided Amplitude Spectrum of M(f)');
xlabel('f (Hz)');
ylabel('|P1M(f)|');
ylim([0 0.55]);
xlim([0 50]);


subplot(3, 2, 5);
plot(t, s);
title('ASK signal wrt time');
xlabel('time (t)');
ylabel('Displacement');
ylim([-1.5 1.5]);
xlim([0 t(end)]);

subplot(3, 2, 6);
plot(f, P1S);
title('Single Sided Amplitude Spectrum of S(f)');
xlabel('f (Hz)');
ylabel('|P1S(f)|');
ylim([0 0.255]);
