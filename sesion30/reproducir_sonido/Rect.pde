class Rect {
  float x, y;
  float w, h;
  color encendido;
  color apagado;
  boolean flag;
  
  Rect(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    flag = true;
    encendido = color(0, 255, 0);
    apagado = color(255, 0, 0);
  }

  void Dibujar() {
    if(flag) {
      fill(encendido);
    } else {
      fill(apagado);
    }
     strokeWeight(2);
     rect(x, y, w, h);   
  }
  
  void Intercambiar() {
    if(flag == true) {
      flag = false;
    } else {
      flag = true;
    }
  }
}
