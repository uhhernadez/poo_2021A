PImage img;
void setup() 
{
  size(1024, 1024);
  img = loadImage("cat.png");
}

void draw()
{

}

void mousePressed()
{
  imageMode(CENTER);
  float s = 0.5;
  image(img, mouseX, mouseY, s*img.width, s*img.height);
}
