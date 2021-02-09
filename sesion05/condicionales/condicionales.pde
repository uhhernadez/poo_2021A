float x1, y1, w1, h1;
float x2, y2, w2, h2;

void setup() {
  size(512, 512);
  x1 = 50; 
  y1 = 50;
  w1 = 400;
  h1 = 400;
  
  x2 = 350; 
  y2 = 350;
  w2 = 50;
  h2 = 50;
}

void draw()
{
  background(255);
  
  fill(255);
  if ( x1 < mouseX ) 
  {
    if (mouseX < x1 + w1)
    {
      if(y1 < mouseY)
      {
        if(mouseY < y1 + w1) 
        {
          fill(255, 0, 0);
        }
      }
    }
  } 
  
  rect(x1, y1, w1, h1);
  
  fill(255);
  if ( x2 < mouseX ) 
  {
    if (mouseX < x2 + w2)
    {
      if(y2 < mouseY)
      {
        if(mouseY < y2 + w2) 
        {
          fill(0, 255, 0);
        }
      }
    }
  }
  
  rect(x2, y2, w2, h2);
}
