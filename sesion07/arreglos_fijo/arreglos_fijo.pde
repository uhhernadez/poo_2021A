float [] x;
float [] y;
int N;
void setup() 
{
  size(512, 512);
  N = 100;
  x = new float[N];
  y = new float[N];
 
  for(int k = 0; k< N; k++) 
  {
    x[k] = random(0, width);
    y[k] = random(0, height);
  }
}

void draw() 
{
  background(255);
  textSize(30);
  
  for(int k = 0; k < N; k++) 
  {
    circle(x[k], y[k], 50);
    x[k]+=random(-5,5);
    y[k]+=random(-5,5);
  }
}
