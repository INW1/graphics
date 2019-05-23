color r=color(255,0,0);
color g=color(0,255,0);
color b=color(0,0,255);
loadPixels();
int sz=width*height;
for(int i=0;   i<sz/4;  i++) pixels[i]=r;
for(int i=sz/4;i<sz/2;  i++) pixels[i]=g;
for(int i=sz/2;i<sz*3/4;i++) pixels[i]=b;
updatePixels();
