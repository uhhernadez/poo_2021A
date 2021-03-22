class Covid
{
  PImage img;
  float x, vx;
  float y, vy;
  float w, h;
  
  Covid()
  {
    vx = 1;
    vy = 2;
    img = loadImage("covid.png");
    w = 64;
    h = 64;
  }
  
  Covid(float xi, float yi, float vxi, float vyi)
  {
    x = xi;
    y = yi;
    vx = vxi;
    vy = vyi;
    img = loadImage("covid.png");
    w = 64;
    h = 64;
  }
  
  void Dibujar()
  {
    x += vx;
    if( x < 0 || x > width)
    {
      vx *= -1;
    }
  
    y += vy;
  
    if( y < 0 || y > height)
    {
      vy *= -1;
    }
    
    imageMode(CENTER);
    image(img, x, y, w, h);
  }
}
