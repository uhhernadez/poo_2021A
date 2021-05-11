Azulejo azulejo;

void setup() {
  size(300, 300);
  azulejo = new Azulejo(0, 0);
}

void draw() {
  //background(150);
  for(int i=0; i < 5; i++) {
    for(int j=0; j < 5; j++) {
      pushMatrix();
        translate(i*60, j*60);
        azulejo.Dibujar();
      popMatrix();
    }
  }
}
