PImage img;
void setup(){
size(500,500);
rectMode(CENTER);
 img=loadImage("C:/Users/liw55/Desktop/FS000023.png");
}
float f;
void draw(){
 
  translate(mouseX,mouseY);
  rotate(f);
  scale( sin(f) +0.5);
  f+=0.05;
   fill(207,233,50);
  image(img,0,0,100,100);
  
  
}
