void setup()
{
  size(300, 300);
}

void draw()
{
  background(50);
  circulo(75, 75, 30);
  circulo(75, 150, 30);
  circulo(75, 225, 30);
  
  circulo(150, 75, 30);
  circulo(150, 150, 30);
  circulo(150, 225, 30);
  
  circulo(225, 75, 30);
  circulo(225, 150, 30);
  circulo(225, 225, 30);
}


void circulo(float x, float y, float r)
{
  fill(34,43,56);
  
  if(x-r < mouseX &&  mouseX < x+r) 
  {
    if(y-r < mouseY &&  mouseY < y+r )
    {
      fill(244, 0, 0);
    }
  }
  
  circle(x, y, 2*r);
}
