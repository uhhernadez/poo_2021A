float diametro = 10;
float dd = 3;
boolean crecer = true;


void setup()
{
  size(300, 300);
}

void draw()
{
  background(40);
  fill(255);
  circle(width/2, height/2, diametro);
  
  if(crecer) 
  {
    diametro = diametro + dd;
    
    if(diametro >= width)
    {
      crecer = false;
    }
  }
  else 
  {
    diametro = diametro - dd;
    
    if(diametro <= 0)
    {
      crecer = true;
    }
  }
  fill(255, 0, 0);
  //text(diametro, width/2, height/2);
}
