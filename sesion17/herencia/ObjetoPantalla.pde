// Clase base
class ObjetoPantalla
{
  PVector pos;
  
  ObjetoPantalla()
  {
    pos = new PVector();
    println("Constructor objeto pantalla");
  }
  
  void Dibujar()
  {
    pos.add(random(-2, 2),random(-2, 2));
    circle(pos.x, pos.y, 20);
  }
}
