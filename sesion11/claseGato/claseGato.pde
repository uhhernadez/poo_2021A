Gato felpuchina;
void setup()
{
  size(512, 512);
  felpuchina = new Gato();
}

void draw()
{
  background(220);
  translate(256, 256);
  felpuchina.Dibujar();

}

void mousePressed()
{
  felpuchina.Maullar();
}
