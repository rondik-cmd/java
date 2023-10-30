void setup() {
  size(400, 200);
  background(255); // Witte achtergrond

  for (int i = 0; i < 10; i++) {
    float x = i * 40 + 20; // Bereken de x-positie van de lijn
    line(x, 20, x, 180); // Teken een verticale lijn op de berekende positie
  }
}
