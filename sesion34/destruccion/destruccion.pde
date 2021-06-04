ArrayList<Circulo> cs;
Circulo destructor;
Rectangulo r1;
float r;
void setup() {
  size(1024, 1024);
  destructor = new Circulo(50);
  cs = new ArrayList<Circulo>();
  int N = 10; 
  for(int k = 0; k < N; k++) {
    float r = random(10,50);
    cs.add(new Circulo(random(r, width - r), random(r, height - r), r));
  }
}

void draw() {
  background(200);
  destructor.x = mouseX;
  destructor.y = mouseY;
  fill(150);
  destructor.Dibujar();
  for(int k = 0; k < cs.size(); k++) {
     cs.get(k).Dibujar();
    if(Colision(destructor, cs.get(k))) {
      cs.remove(k);
      k--;
    }
  }
}

boolean Colision(Circulo c1, Circulo c2) {
  float r = c1.r + c2.r;
  float d = distancia(c1.x, c1.y, c2.x, c2.y);
  return d < r;
}

float distancia(float x1, float y1, float x2, float y2) {
  return sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
}
