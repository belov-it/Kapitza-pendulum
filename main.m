% Parameters
p.z0 = 4;
p.l = 10;
p.w = 50;
p.phi0 = deg2rad(20);
p.g = 9.81;

% Integration
time = [0 25];
q0 = [p.phi0; 0];

opt = odeset('MaxStep',0.01);
solve = ode45(@ (t,q) rightPart(t, q, p), time, q0,opt);

t = solve.x;
y = solve.y(1,:);
v = solve.y(2,:);


plot(y,v);

figure
hold on;
for x0 = 10:10:50
  q0 = [deg2rad(x0); 0];

  solve = ode45(@ (t,q) rightPart(t, q, p), time, q0,opt);

  t = solve.x;
  y = solve.y(1,:);
  v = solve.y(2,:);
  plot(t,y);
end

hold off;

