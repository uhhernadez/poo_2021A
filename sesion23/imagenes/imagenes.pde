PImage img;

void setup()
{
  size(512, 512);
  img = new PImage(100, 100);
  int size = img.width * img.height;
  img.loadPixels(); 
  for(int k = 0; k < size; k++) 
  {
    img.pixels[k] = color(255, 0 , 0);
  }
  img.updatePixels();
}

void draw()
{
  image(img, width/2, height/2);
  int size = img.width * img.height;
  img.loadPixels(); 
  for(int k = 0; k < size; k++) 
  {
    img.pixels[k] = color(millis()%255, 0 , 0);
  }
  img.updatePixels();
}
