size(800,500);
background(0,0,0);

triangle(100,100,200,100,150,200);

int d = day();    // Values from 1 - 31
int m = month();  // Values from 1 - 12
int y = year();   // 2003, 2004, 2005, etc.

String s = String.valueOf(d);
text(s, 10, 28);
s = String.valueOf(m);
text(s, 10, 56); 
s = String.valueOf(y);
text(s, 10, 84);
