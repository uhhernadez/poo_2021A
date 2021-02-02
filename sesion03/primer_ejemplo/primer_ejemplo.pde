
// Configurar las variables que van a ser utilizadas en nuestro 
// programa

void setup() {
  size(512,512);
}

void draw() {
  int x; // Variable local
  x = 0;
  line(x, 100, 300, 500);
  //line(200, 50, 300, 500);
  
  ellipse(x, 46, 55, 55);
  circle(x, 46, 50);
  x = x + 10;
}
