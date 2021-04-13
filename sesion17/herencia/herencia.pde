ObjetoPantalla op;
Perro perro;
void setup()
{
  size(512, 512);
  op = new ObjetoPantalla();
  perro = new Perro();
}

void draw()
{
  background(0);
  perro.Dibujar();
}
