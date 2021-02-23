int a;
PImage black;
PImage white;
void setup() 
{
  a = 50;
  size(400, 400);
  
  black = loadImage("black.jpg");
  white = loadImage("white.jpg");
}

void draw() 
{
  background(255);
  fill(0);
  
  for (int i = 0; i < 8; i++)
    for (int j = 0; j <8; j++) 
    {
      if ((i+j) % 2 == 0) 
      {
        image(black, i*a, j*a, a, a);
      } else 
      {
        image(white, i*a, j*a, a, a);
      }
      
    }
}

void TableroAjedrez2()
{
  for (int i = 0; i < 8; i++)
    for (int j = 0; j <8; j++) 
    {
      if ((i+j) % 2 == 0) 
      {
        fill(255, 0, 0);
      } else 
      {
        fill(0, 255, 0);
      }
      square(i*a, j*a, a);
    }
}

void TableroAjedrez1()
{
  // Linea 1
  for (int i = 0; i < 8; i+=2)
    LineaNegra(a, i*a);

  // Linea 2
  for (int i = 1; i < 8; i+=2) 
    LineaBlanca(a, i*a);
}

void LineaNegra(int a, int y) 
{
  for (int i = 0; i < 8; i+=2)
  {
    square(i*a, y, a);
  }
}

void LineaBlanca(int a, int y) 
{
  for (int i = 1; i < 8; i+=2) 
  {
    square(i*a, y, a);
  }
}
