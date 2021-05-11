class Cuadricula
{
  float l;
  Cuadricula(float l)
  {
    this.l = l;
  }

  void Dibujar()
  {
    int N = floor(height/l);
    // Horizontales
    for(int k = 0; k < N; k++) 
    {
      line(0, k*l, width,k*l);
    }
    // Verticales
    for(int k = 0; k < N; k++) 
    {
      line(k*l, 0, k*l, height);
    }
  }
}
