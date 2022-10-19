
function retval = rightPart (t, q, p)
  phi = q(1);
  omega = q(2);

  dphidt = omega;
  domegadt=-sin(phi)/p.l*(p.z0*p.w^2*cos(p.w*t)-p.g);

  retval = [dphidt, domegadt];

endfunction
