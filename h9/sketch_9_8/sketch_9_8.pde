void setup() {
  size(1000, 1000);
  background(255);
  mijnMethode(100, 900, 900, 900, 500, 100);
}

void mijnMethode(int x1, int y1, int x2, int y2, int x3, int y3) {
  triangle(x1, y1, x2, y2, x3, y3);
}
