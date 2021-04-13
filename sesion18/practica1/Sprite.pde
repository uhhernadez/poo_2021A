class Sprite
{
  PImage [] walk;
  int frame;
  int speed;
  
  Sprite(String animal, String prefix)
  {
    walk = new PImage[10];
  
    for(int k = 0; k < 10; k++)
    {
      walk[k] = loadImage(animal + "/"+prefix+"_"+str(k+1)+".png");
    }
    frame = 0;
    speed = 5;
  }
  
  void Draw()
  {
    imageMode(CENTER);
    image(walk[frame], 0, 0, 100, 100);

    if(frameCount % speed == 0) {
      frame++;
      frame= frame % walk.length;
    }
  }
}
