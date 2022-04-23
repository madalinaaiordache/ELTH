function rez_circuit_elth ()
  
  f = 50;
  E1 = 0.235294;
  V1 = 17;
  V3 = 13;
  J1 = 1;
  C = (2 * 100) / pi * 0.000001;
  L1 = (3 * 100) / pi  * 0.001;
  U1 = V1;
  R1 = 3;
  R4 = 1;
  R2 = 5;
  R3 = 2;


  E1_c = E1;
  V1_c = V1 * j;
  V3_c = V3 * (-j);
  J1_c = J1 * (0.5253 + j * 0.5253);
    

  Z1 = 3;
  Z2 = 5;
  Z3 = 2;
  Z4 = 1;
  Z5 = 1/(2 * pi * j * f * C);
  Z6 = j * 2 * pi * f * L1;
  Rp = (R3 * Z5)/(R3 + Z5);
  
  U2 = ((Rp/R4) * V3_c + Rp * (1+i) - Rp/(R1 + Z6) * (V1_c + E1) )/(1 - Rp/R4 - Rp/(R1+Z6))
  U3 = U2 - U1
  
endfunction