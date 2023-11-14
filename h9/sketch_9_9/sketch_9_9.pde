void setup() {
  size(1000, 1000);
  background(255);
  boomTekenen(450, 500, 100, 500, 500, 500, 300);
}

void boomTekenen(int x1, int y1, int l, int b, int x2, int y2, int g) {
  fill(200,100,0);
  rect(x1, y1, l, b);
  fill(0,200,0);
  circle(x2, y2, g);
}
