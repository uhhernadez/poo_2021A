// Sesión 4
void setup() {
  size(512,256);
}

void draw() { 
  smooth();
  stroke(127,54,0);
  rectMode(CENTER);
  line(pmouseX,pmouseY, mouseX, mouseY);
}

void mousePressed() {
  background(255);
}
