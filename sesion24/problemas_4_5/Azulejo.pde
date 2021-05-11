class Azulejo {
  float x;
  float y;
  float delta;
  
  Azulejo(float x, float y) {
    this.x = x;
    this.y = y;
    delta = 20;
  }

  void Dibujar() {
    fill(255);
    rect(x          , y          , delta  , 2*delta);
    rect(x + delta  , y          , 2*delta, delta);
    rect(x + 2*delta, y + delta  , delta  , 2*delta);
    rect(x          , y + 2*delta, 2*delta, delta);
    fill(0);
    rect(x + delta  , y + delta, delta, delta);
  }

  void Trasladar(float dx, float dy) {
    x = dx;
    y = dy;
  }
}
