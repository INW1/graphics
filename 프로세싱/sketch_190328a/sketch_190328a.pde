int cols, rows;
float a = 0.0;
//PImage[] img = new PImage[2];
int scl = 15;
int w=1200;
int h=900;

float[][] terrain;
float[][] col;
void setup() {

  size(800, 600, P3D);
  //img[0] = loadImage("b1.gif"); 
  // img[1] = loadImage("b2.gif");
  cols=w/scl;
  rows=h/scl;
  terrain = new float[cols][rows];
  col = new float[cols][rows];
  frameRate(50);
}

float flying;
//int f;
void draw() {
  a += 0.0005;
  if (a > TWO_PI) { 
    a = 0.0;
  }

  background(14, 35, 152);
  pushMatrix();
  stroke(255);
  fill(246, 255, 0);
  translate(width*0.7, height*0.01, -200);
  rotateY(a);
  rotateX(a * 2);
  sphere(50);
  translate(width*1.2, height*0.01, 200);
  rotateY(a);
  rotateX(a * 2);
  sphere(50);
  popMatrix();
  flying -= 0.1;
  float yoff=flying;
  for (int y=0; y<rows; y++) {
    float xoff=0;
    for (int x=0; x<cols; x++) {
      terrain[x][y]=map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff +=0.2;
      col[x][y] = terrain[x][y];
    }
    yoff +=0.2;
  }

  // image(img[++f%2], 0,0);

  //noStroke();
  stroke(#00FF00);
  //noFill();
  translate(width/2, height/2);
  rotateX(PI/4);
  translate(-w/2, -h/3);

  for (int y=0; y<rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x=0; x<cols; x++) {
      fill(32+col[x][y], 211-col[x][y], 84+col[x][y]);
      vertex(x*scl, y*scl, terrain[x][y]); 
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}

