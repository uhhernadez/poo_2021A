Estrella [] estrellas;

void setup()
{
  size(1920, 1024);
  int N = 500;
  estrellas = new Estrella[N];
  
  for(int k = 0; k < N; k++)
  {
    estrellas[k] = new Estrella();
  }
}

void draw()
{
  background(0);
  
  for(Estrella s: estrellas)
  {
    s.Dibujar();
  }
}
