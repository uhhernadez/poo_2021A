FiguraAleatoria [] figuras;
void setup()
{
  size(512, 512);
  figuras = new FiguraAleatoria[50];
  for(int k = 0; k< 50; k++) 
  {
    figuras[k] = new FiguraAleatoria();
  }
}

void draw() 
{
  for(FiguraAleatoria figura: figuras) 
  {
    figura.Dibujar();
  }
}
