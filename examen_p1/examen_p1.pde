boolean crecer = true;
float r = 10;
float dr = 1;
void setup()
{
  size(512, 512);
}

void draw()
{
  background(255);
  if(crecer)
  {
    r += dr;
    if( r > 256)
    {
      crecer = false;
    }
  }
  else
  {
    r -= dr;
    if( r < 10)
    {
      crecer = true;
    }
  }
  circle(width/2, height/2, 2 * r);
}
