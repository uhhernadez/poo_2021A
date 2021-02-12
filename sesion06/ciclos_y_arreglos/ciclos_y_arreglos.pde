void setup() {
  size(512, 512);
}

void draw() {
  background(255);
  fill(50);
  // Tronco
  rect(100, 100, 80, 100);
  // Brazo izquierdo
  rect(100-40, 100, 40, 90);
  // Brazo derecho
  rect(100+80, 100, 40, 90);
  // Cabeza
  rect(100, 100-40, 80, 40);
  // Pierna izquierda
  rect(100, 100+100, 40, 100);
  // Pierna derecha
  rect(100 + 40, 100+100, 40, 100);
}
