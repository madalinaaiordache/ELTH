function plot_diode()   
  E = -13.75;
  r = 2;
  R = 0.75;
  Is = 10;
  Vt = 3;
  I = 0.3 : 0.3 : 15;
  
  for i = 1 : length(I)
    U_b(i) = E - r * I(i);
    ID(i) = (exp(U_b(i)/Vt) - 1) * Is;
  endfor

  plot(U_b, I);
  hold on
  
  plot(U_b, ID);
  hold on
  
  title("Caracteristica generatorului echivalent si a diodei semiconductoare polarizata invers");
  legend("Caracteristica generator",
          "Caracteristica dioda");
endfunction