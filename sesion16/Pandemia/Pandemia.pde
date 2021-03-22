//Covid covid;
ArrayList<Covid> pandemia;
void setup()
{
  size(1920, 1024);
  //covid = new Covid(50, 50, random(1, 5), random(5,8));
  pandemia = new ArrayList<Covid>();
  
}

void draw()
{
  background(255);
  //covid.Dibujar();
  for(Covid c : pandemia)
  {
    c.Dibujar();
  }
}

void mousePressed()
{
  pandemia.add(new Covid(mouseX, mouseY, random(-5, 5), random(-5, 5)));
}
