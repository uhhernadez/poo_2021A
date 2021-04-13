Personaje p;
Gato felpuchina;
void setup()
{
  size(512, 512);
  p = new Personaje("dog");
  felpuchina = new Gato();
}

void draw()
{
  background(0);
  p.Dibujar();
  //felpuchina.Dibujar();
  Personaje fp = felpuchina; // Acceso por la clase base, polimorfismo
  fp.Dibujar();
}
