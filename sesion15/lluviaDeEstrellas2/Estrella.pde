class Estrella
{
  float x;
  float y;
  float s;
  PShape eshape;
  float v;
  color c;
  // Constructor
  Estrella()
  {
    x = random(0, width);
    y = random(0, height);
    s = random(0.001, 1.0);
    v = random(0.5, 5.0);
    eshape = loadShape("estrella.svg");
    c = color(random(200, 250), random(150, 200), random(50, 200));
  }

  void Dibujar()
  {
    pushMatrix();
      translate(x,y);
      scale(s);
      shapeMode(CENTER);
      eshape.disableStyle();
      fill(c);
      shape(eshape, 0, 0);
    popMatrix();
    y+=v;
  }

}
