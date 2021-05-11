class Snake
{
  float x;
  float y;
  float l;
  color c;
  Snake() 
  {
    x = width/2;
    y = height/2;
    l = 50;
    c = color(0, 200, 00);
  }

  void Dibujar() 
  {
    square(x, y, l);
  }
  
  void Mover() 
  {  
    MoverA();
    
    if(x < 0) 
    {
      x = 0;
    }
    if(y < 0)
    {
      y = 0;
    }
    
    if(x >= width)
    {
      x = width - l;
    }
    
    if( y >= height)
    {
      y = height -l;
    }
    
  }
  
  void MoverA()
  {
    // WASD
    if(key == 'w' || key == 'W') 
    {
      y -= l;
    }
    
    if(key == 'a' || key == 'A') 
    {
      x -= l;
    }
    
    if(key == 's' || key == 'S') 
    {
      y += l;
    }
    
    if(key == 'd' || key == 'D') 
    {
      x += l;
    }  
  }
}
