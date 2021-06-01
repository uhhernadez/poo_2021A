class Circulo {
  float x;
  float y;
  float r;
  
  Circulo(float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
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
