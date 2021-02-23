ArrayList<PVector> puntos;

void setup() 
{
  size(512, 512);
  puntos = new ArrayList<PVector>();
}

void draw()
{
  background(255);
  for(PVector p : puntos) 
  {
     circle(p.x, p.y, 20);
     p.y += 0.1; 
  }
}

void mousePressed() 
{
  puntos.add(new PVector(mouseX, mouseY));
}
