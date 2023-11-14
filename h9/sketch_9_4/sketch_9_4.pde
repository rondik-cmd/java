void setup() {
  size(1000,1000);
  background(255);
  mijnMethode(100, 100, 900, 900);
}

void mijnMethode(int cijfer1, int cijfer2, int cijfer3, int cijfer4) {
  line(cijfer1, cijfer2, cijfer1, cijfer3);
  line(cijfer1, cijfer2, cijfer3, cijfer1);
  line(cijfer3, cijfer2, cijfer3, cijfer4);
  line(cijfer1, cijfer3, cijfer4, cijfer4);
}
