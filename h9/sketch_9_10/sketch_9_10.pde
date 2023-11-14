void setup() {
  size(1000, 1000);
  background(255);
  boomMethode(450, 500, 100, 500, 500, 500, 300);
  bosMethode(0, 500, 100, 500, 50, 500, 300);
}

void boomMethode(int x1, int y1, int l, int b, int x2, int y2, int g) {
  fill(200, 100, 0);
  rect(x1, y1, l, b);
  fill(0, 200, 0);
  circle(x2, y2, g);
}

void bosMethode(int x1,int y1,int l,int b,int x2,int y2,int g) {
  for (int i = 0; i < 7; i += 1) {
    boomMethode(x1 + i * 150, y1 , l , b , x2 + i * 150, y2 , g );
  }
}
