int[] getallen = {1, 2, 3, 1, 3, 4, 4, 4, 6, 6};


void setup() {
  println(telHoeVaakGetalVoorkomt(1));
  println(telHoeVaakGetalVoorkomt(2));
  println(telHoeVaakGetalVoorkomt(3));
  println(telHoeVaakGetalVoorkomt(4));
  println(telHoeVaakGetalVoorkomt(6));//roep jouw methode aan
}

int telHoeVaakGetalVoorkomt(int zoeknummer) {
  int aantalGevonden = 0;
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == zoeknummer) {
      aantalGevonden++;
    }
  }
  return aantalGevonden;
}
