float a = 0.0;
float b = 0.0;
float c = 0.0;
void setup() {
  size(800, 640, P3D);

  background(0);
  lights();
}
void draw() {
  a += 0.0005;
  if (a > TWO_PI) { 
    a = 0.0;
  }
  b += 0.004;
  if (b > PI) { 
    b = 0.0;
  }
  c += 0.004;
  if (c > PI) { 
    c = 0.0;
  }

  background(14,35,152);
  pushMatrix();
  noFill();
  stroke(255, 0, 0);
  translate(width/2, height*0.5, -200);
  rotateY(a);
  rotateX(a * 2);
  sphere(mouseX);
  noFill();
  stroke(165, 231, 240);
  translate(width/2, 0, 0);
  rotateY(b);
  rotateX(b * 3);
  sphere(100);
  noFill();
  stroke(165, 231, 240);
  translate(width/2, 0, 200);
  rotateY(c);
  rotateX(c*3);
  sphere(-100);
  popMatrix();
}

