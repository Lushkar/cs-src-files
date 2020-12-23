dm = (c == s);

subplot(3, 1, 1)
plot(t, m)
title('Original Message Signal');
xlabel('t (s)');
ylabel('m(t)');
ylim([-0.2 1.2]);
xlim([0 t(end)]);


subplot(3, 1, 2);
plot(t, s);
title('Modulated Signal');
xlabel('t (s)');
ylabel('s(t)');
ylim([-1.2 1.2]);
xlim([0 t(end)]);




subplot(3, 1, 3);
plot(t, dm);
title('Demodulated Message Signal');
xlabel('t (s)');
ylabel("m'(t)");
ylim([-0.2 1.2]);
xlim([0 t(end)]);
