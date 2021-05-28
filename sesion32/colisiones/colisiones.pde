Circulo c;
Circulo c2;
Rectangulo r1;
float r;
void setup() {
  size(1024, 1024);
  c = new Circulo();
  c2 = new Circulo(20);
  r = c.r + c2.r;
  r1 = new Rectangulo();
}

void draw() {
  /*
  if(distancia(c.x,c.y, mouseX, mouseY) < c.r) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 255);
  }*/
  background(150);
  c2.x = mouseX;
  c2.y = mouseY;
 
  if(r1.ColisionCirculo(c2)) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 255);
  }  
  
  r1.Dibujar();
  
  fill(255, 255, 255);
  c2.Dibujar();
  
  if(distancia(c.x,c.y, c2.x, c2.y) < r) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 255);
  }
  
  c.Dibujar();
}

float distancia(float x1, float y1, float x2, float y2) {
  return sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
}
