class Estrella
{
  float x;
  float y;
  float s;
  PShape eshape;
  float v;
  // Constructor
  Estrella()
  {
    x = random(0, width);
    y = random(0, height);
    s = random(0.001, 3.0);
    v = 1;
    eshape = loadShape("estrella.svg");
  }

  void Dibujar()
  {
    pushMatrix();
      translate(x,y);
      scale(s);
      shapeMode(CENTER);
      shape(eshape, 0, 0);
    popMatrix();
    y+=v;
  }

}
