Phanton gasparin;

void setup()
{
  size(512, 512);
  gasparin = new Phanton();
}

void draw()
{
  background(100);
  gasparin.Draw();
  float x = random(-2, 2);
  float y = random(-2, 2);
  gasparin.Translate(x, y);
}

void mousePressed()
{
  if (mouseButton == LEFT) {
    gasparin.Invisible();
    gasparin.Scream();
  } else if (mouseButton == RIGHT) {
    gasparin.Normal();
  } 
}
