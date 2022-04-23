  R = [1 : 25];
  R1 = 2;
  U = 13.75;
  I = [];
  for i = 1 : length(R)
    I(i) = U / (R1 + R(i));
  endfor
  figure(1);
  plot(R, I);
  U = [];
  title("Dependenta curentului prin rezistor");
  xlabel("R");
  ylabel("I");
  for i =1 : length(R)
    U(i) = I(i) * R(i);
  endfor
  figure(2);
  plot(R, U);
  P = [];
  title("Dependenta tensiunii prin rezistor");
  xlabel("R");
  ylabel("U");
  for i = 1 : length(R)
    P(i) = I(i) * I(i) * R(i);
  endfor
  U = 13.75;
  figure(3);
  hold on;
  P1 = (U * U) / (4 * R1);
  I = 5;
  P2 = I * I * R1;
  plot(R, P1, P);
  title("Dependenta puterii prin rezistor");
  xlabel("R");
  ylabel("P");
  hold off;