String zoekNaam = "rio";
boolean gevonden = false;
String[] namen = {"rio", "sandra", "piet", "pieter", "joost", "ali", "abdel", "amir", "mohammed"};

void setup() {
  for (int i = 0; i < namen.length; i++) {
    if (zoekNaam == namen[i]) {
      gevonden = true;
    }
  }
  if (gevonden) {
    println("ja de naam " + zoekNaam + " bestaat!");
  } else {
    println("helaas de naam " + zoekNaam + " bestaat niet!");
  }
}
