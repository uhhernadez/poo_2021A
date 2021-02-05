// Tarea sesión 3
void setup() {
  size(512,256);
  frameRate(-10);
}

void draw() {
  background(255); // un argumento, escala de grises
  //background(0,0,255); // multiples argumentos, rgb
  smooth();
  stroke(127,54,0);
  rectMode(CENTER);
  fill(30,90,100);
  rect(50,128, 50, 50);
  stroke(0,54,127);
  fill(255,90,10);
  rectMode(CORNER);
  rect(50,128, 50, 50);
  println("Me estoy ejecutando a 1 frame por segundo");
}
