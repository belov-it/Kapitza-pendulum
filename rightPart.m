
function retval = rightPart (t, q, p)
  teta = q(1);
  omega0 = q(2);

  J = p.m*p.l/3; %moment of inertia


  domega0dt = p.b*omega0/J+
  p.m*p.l*(p.g-p.a*p.omega^2*sin(p.omega*t+p.beta))*sin(teta)/2*J;

  retval = [omega0, domega0dt];

endfunction
