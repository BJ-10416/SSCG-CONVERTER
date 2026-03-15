clc; clear; close all;

d = 0:0.005:1;   % Duty cycle (avoid d = 1 to prevent division by zero)
hold on

% === Reference Converters (Same colors, thick lines) ===
g20 = (1 + 2*d - 2*d.^2) ./ ((1 - d).^2);
plot(d, g20, '--', 'Color', [0 0.5 0.5], 'LineWidth', 3);   % Dark Cyan

g21 = (1 + d) ./ (1 - d).^2;
plot(d, g21, '--', 'Color', [0.8 0.3 0], 'LineWidth', 3);   % Darker Orange

g22 = 4 ./ (1 - d).^2;
plot(d, g22, '--', 'Color', [0.7 0 0], 'LineWidth', 3);     % Dark Red

g23 = (2 - d).^2 ./ (1 - d).^2;
plot(d, g23, '--', 'Color', [0.5 0 0.5], 'LineWidth', 3);   % Dark Magenta

g24 = (3 - d) ./ (1 - d).^2;
plot(d, g24, '--', 'Color', [0.35 0 0.7], 'LineWidth', 3);  % Dark Violet


g25 = 3 ./ (1 - d).^2;
plot(d, g25, '--', 'Color', [0 0.4 0], 'LineWidth', 3);     % Dark Green

g26 = (4 - 2*d) ./ (1 - d).^2;
plot(d, g26, '--', 'Color', [0 0.3 0.3], 'LineWidth', 3);   % Dark Teal

g27 = (3 - d) ./ (1 - d).^2;
plot(d, g27, '--', 'Color', [0.5 0 0.4], 'LineWidth', 3);   % Dark Purple-Pink

g28 = d ./ ((1 - d).^3);
plot(d, g28, '--', 'Color', [0 0 0.6], 'LineWidth', 3);     % Dark Blue

g29 = 1 ./ (1 - d).^3;
plot(d, g29, '--', 'Color', [0.4 0.2 0.1], 'LineWidth', 3); % Dark Brown

g30 = 1 ./ (1 - d).^2;
plot(d, g30, '--', 'Color', [0.2 0.2 0.2], 'LineWidth', 3);   % Dark Gray (Distinct)


% === SSCG Converter (Solid Black Line) ===
gPC = 1 ./ (1 - d).^3;
plot(d, gPC, '-k', 'LineWidth', 4);   % Solid Black (same width)

% === Labels, Title, and Legend ===
xlabel('Duty Cycle (D)', 'FontWeight', 'bold', 'FontSize', 12)
ylabel('Voltage Gain (G)', 'FontWeight', 'bold', 'FontSize', 12)
title('Comparison of Converter Voltage Gain Characteristics', 'FontWeight', 'bold', 'FontSize', 13)

legend('REF [20]', 'REF [21]', 'REF [22]', 'REF [23]', 'REF [24]', ...
       'REF [25]', 'REF [26]', 'REF [27]', 'REF [28]', 'REF [29]', 'REF [30]', ...
       'SSCG Converter', 'Location', 'northwest');

grid on
box on

set(gca, 'FontWeight', 'bold', 'LineWidth', 1.2)
