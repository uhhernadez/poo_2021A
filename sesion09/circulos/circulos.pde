void setup ()
{
  size(200, 200);
}

void draw ()
{
  background(255);
  /*
  for(int i = 200; i > 0; i-=20 )
  {
    fill(i);
    circle(100, 100, i);
  }
  */
  //circulosConcentricos(50, 50);
  circulosConcentricos(mouseX, mouseY);

}

void circulosConcentricos(int x, int y)
{
  fill(220); // 0 - 255 (256)
  circle(x, y, 200);
  fill(200);
  circle(x, y, 180);
  fill(180);
  circle(x, y, 160);
  fill(160);
  circle(x, y, 140);
  fill(140);
  circle(x, y, 120);
  fill(120);
  circle(x, y, 100);
  fill(100);
  circle(x, y, 80);
  fill(80);
  circle(x, y, 60);
  fill(60);
  circle(x, y, 40);
  fill(40);
  circle(x, y, 20);
}
