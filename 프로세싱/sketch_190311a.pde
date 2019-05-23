void setup(){
size(500,500);
}
void draw(){
if(mousePressed)
line(pmouseX,pmouseY,mouseX,mouseY);
}

void keyPressed(){
   
if(key=='r') stroke(255,0,0);
if(key=='t') stroke(0,0,0);
else{
strokeWeight((key-'0')*10);   //'0'-'0' = 0 
}
}
