class Rectangulo {
  float x;
  float y;
  
  float ancho;
  float alto;
  
  Rectangulo() {
     x = 200;
     y = 200;
     ancho = 200;
     alto = 100;
  }


  void Dibujar() {
    rect(x, y, ancho, alto);
  }
  
  boolean ColisionPunto(float px, float py) {
    return (px >= x) && (px <= x+ancho) && (py >=y) && (py <= y+alto);
  }
  
  boolean ColisionCirculo(Circulo c) {
    if(ColisionPunto(c.x-c.r, c.y))
      return true;
    
    if(ColisionPunto(c.x+c.r,c.y))
      return true;
    
    if(ColisionPunto(c.x, c.y + c.r))
      return true;
    
    if(ColisionPunto(c.x,c.y-c.r))
      return true;
      
    return false;
  }
 
}
