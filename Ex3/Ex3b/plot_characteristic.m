  R = 0.75;
  R1 = 2;
  E = 13.75;
  I = 0.3 : 0.3 : 15;
   for i = 1 : length(I)
    U(i) = I(i) * R;
  endfor
  for i = 1 : length(I)
    u(i) = E - R1 * I(i);
  endfor
  i_intersection = E/(R + R1);
  u_intersection = R * i_intersection;
  plot(I, U, "linewidth", 1);
  hold on
  plot(I, u, "linewidth", 1);
  hold on
  plot(i_intersection, u_intersection, "*", "MarkerSize", 7);
  legend( "Caracteristica rezistorului liniar",
           "Caracteristica generatorului echivalent",
           "Inntersectia graficelor");