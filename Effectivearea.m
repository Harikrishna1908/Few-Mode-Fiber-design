V = (4.1:0.01:5.05);
wavelength = 1.55e-6;
n_core = (1.45:0.0001:1.46);
n_clad = 1.444;
e = numel(n_core) * numel(V);
NA = zeros(1, numel(n_core));
core_radius = zeros(1, e);
omega = zeros(1, e);
Aeff = zeros(1, e);
NA = sqrt((n_core.^2) - (n_clad^2));
% Calculate core radius and omega
for i = 1:numel(V)
    for j = 1:numel(n_core)
        index = (i - 1) * numel(n_core) + j;
        core_radius(index) = (wavelength * V(i)) / ((2 * pi) * NA(j));
        omega(index) = (0.65 + (1.619 * (V(i)^-1.5)) + (2.879 * (V(i)^-6)) - 0.016 - (1.561 * (V(i)^-7))) * core_radius(index);
    end
end
Aeff = pi * (omega.^2);
Power=(1 - exp(-((2.*(core_radius.^2))./(omega.^2)))).*100;
