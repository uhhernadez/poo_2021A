Gato felpuchina;
Gato capitan;
void setup()
{
  size(512, 512);
  felpuchina = new Gato();
  capitan = new Gato();
}

void draw()
{
  background(220);
  translate(126, 256);
  felpuchina.Dibujar();
  translate(256, 0);
  capitan.Dibujar();
}

void mousePressed()
{
  if (mouseButton == LEFT) {
    felpuchina.Maullar();
  } else if (mouseButton == RIGHT) {
    capitan.Maullar();
  } 
}
