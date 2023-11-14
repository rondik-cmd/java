float mijnCijfers;
float cijfer1 = 235;
float cijfer2 = 912;

void setup () {
  mijnCijfers = mijnMethode (cijfer1, cijfer2);
  println("som = " + cijfer1 + " + " + cijfer2 + " : 2 = " + mijnCijfers);
}

float mijnMethode(float cijfer1, float cijfer2) {
  float totaal = (cijfer1 + cijfer2) / 2;
  return totaal;
}
