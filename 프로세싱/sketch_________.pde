void setup()
{
size(500,500);
textSize(64);
}
int i=1, spd=10;
void draw()
{
background(0);
text("Andong",i+=spd,250);
if(i>=(width-40*6))
{
spd=-10;
}
else if(i<=0)
{
spd=10;
}
}
