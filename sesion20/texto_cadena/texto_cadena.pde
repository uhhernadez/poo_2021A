PFont font;
void setup()
{
  size(1280, 720);
  //font = createFont("Arial", 20, true);
  //font = createFont("fonts/RobotoCondensed-Bold.ttf", 18, true);
  //font = createFont("fonts/Rob$otoCondensed-Light.ttf", 18,false);
  font = createFont("French Script MT", 18,false);
  textFont(font,46);
}

void draw()
{
  int x = width/2;
  int y = height/2;
  background(0);
  fill(255);
  stroke(255);
  textAlign(RIGHT);
  String lorem = "Lorem ipsum dolor sit amet ó";
  text(textWidth(lorem), x, 30);
  text(lorem, x, y - 40);
  
  textAlign(CENTER);
  text(lorem, x, y);
  
  textAlign(LEFT);
  text(lorem, x, y + 40);
  line(x + textWidth(lorem), y , x + textWidth(lorem), y + 60); 
  fill(255, 0, 0);
  circle(x, y - 40, 10);
  circle(x, y, 10);
  circle(x, y + 40, 10);
}
