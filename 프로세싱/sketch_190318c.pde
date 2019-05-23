
void setup() {
  size(640, 360);
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(width*0.35, height*0.5);
  rotate(frameCount / -100.0);
   fill(255,255,255);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.65, height*0.5);
  rotate(frameCount / 100.0);
    fill(0,0,0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
    pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 50.0);
  fill(0,255,0);
  star(0, 0, 80, 100, 40); 
  popMatrix();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
