void setup()
{
  size(200, 200);
}

void draw()
{
  background(255);
  dibujarCuadrado(0, 0, 100);
  dibujarCuadrado(100, 0, 100);
  dibujarCuadrado(0, 100, 100);
  dibujarCuadrado(100, 100, 100);
}

void dibujarCuadrado(int x, int y, int l)
{
  if(estaAdentro(x, y, l))
  {
    fill(100);
    square(x,y,l);
  }
  else
  {
    fill(255);
    square(x,y,l);
  } 
}

boolean estaAdentro(int x, int y, int l)
{
  if(mouseX > x && mouseX < x + l) 
  {
    if(mouseY > y && mouseY < y + l) 
    {
      return true;
    }
  }
  return false;
}

void primeraAproximacion()
{
  fill(255);
  if(mouseX > 0 && mouseX < 0 + 100) 
  {
    if(mouseY > 0 && mouseY < 0 + 100) 
    {
      fill(100);
    }
  }
  square(0, 0, 100);
  
  fill(255);
  // (100, 0)
  if(mouseX > 100 && mouseX < 100 + 100) 
  {
    if(mouseY > 0 && mouseY < 0 + 100) 
    {
      fill(100);
    }
  }
  square(100, 0, 100);
  
  fill(255);
  // (0, 100)
  if(mouseX > 0 && mouseX < 0 + 100) 
  {
    if(mouseY > 100 && mouseY < 100 + 100) 
    {
      fill(100);
    }
  }
  square(0, 100, 100);
  
  fill(255);
  // (100, 100)
  if(mouseX > 100 && mouseX < 100 + 100) 
  {
    if(mouseY > 100 && mouseY < 100 + 100) 
    {
      fill(100);
    }
  }
  square(100, 100, 100);
}
