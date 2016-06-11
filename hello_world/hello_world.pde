void setup()
{
  size(320,200); 
  textSize(50);
  PImage img = loadImage("TravisCI.png");
  image(img,0,0);
}

void draw()
{
  text("Hello world", 20, 130); 
}