int [] vec;
void setup() {
  size(512, 512);
  vec = new int[2];
}

void draw() {
  background(255);
  fill(50);
  vec[1] = 100;
  int ancho = 30;
  int k = 0;
  
  while(k < width)
  {
    line(k, 0, k, height);
    line(0, k, width, k);
    k = k + ancho;
  }
}
