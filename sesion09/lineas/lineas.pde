void setup()
{
  size(200, 200);
}

void draw()
{
  //line(0, 5, width, 5);
  background(255);
  
  for(int i = 10; i < 200; i+=10)
  {
    line(0, i, 200, i);
  }
}
