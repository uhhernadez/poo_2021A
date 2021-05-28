class Circulo {
  float x;
  float y;
  float r;
  
  Circulo() {
    x = 500;
    y = 500;
    r = 100;
  }
  Circulo(float radius) {
    x = 500;
    y = 500;
    r = radius;
  }

  void Dibujar() {
    circle(x, y, 2*r);
  }
}
