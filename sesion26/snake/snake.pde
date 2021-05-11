Snake snake;
Cuadricula c;
void setup()
{
  size(500, 500);
  snake = new Snake();
  c = new Cuadricula(50);
}

void draw() 
{
  background(100);
  snake.Dibujar();
  c.Dibujar();
}

void keyPressed()
{
  snake.Mover();
}
