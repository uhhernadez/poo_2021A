class FiguraAleatoria
{
  int opcion;
  float x;
  float y;
  float x1, y1, x2, y2, x3, y3;
  FiguraAleatoria()
  {
    opcion = floor(random(0, 3));
    x = random(0, width);
    y = random(0, height);
    float largo = 40;
    x1 = x + random(-largo, largo);
    y1 = y + random(-largo, largo);
    
    x2 = x + random(-largo, largo);
    y2 = y + random(-largo, largo);
    
    x3 = x + random(-largo, largo);
    y3 = y + random(-largo, largo);
  }
  
  void Dibujar()
  {
    switch(opcion) {
      case 0: Circulo(); break;
      case 1: Cuadrado(); break;
      case 2: Triangulo(); break;
      default: println("Algo salió mal"); break;
    }
  
  }

  void Circulo()
  {
     circle(x, y, 40); 
  }
  
  void Cuadrado()
  {
    square(x, y, 40);
  }
  
  void Triangulo()
  {
    /*
    triangle(x - 20, y,
             x     , y + 40,
             x + 20, y);
    */    
    triangle(x1, y1, x2, y2, x3, y3);
  }
  
}
