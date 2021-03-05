class Gato
{
  int ultimoMaullido;
  Gato()
  {
    ultimoMaullido = millis();
  }
  
  void Dibujar()
  {
    strokeWeight(3);
    pushMatrix();
      fill(250);
      triangle(-20, -5, 0, -20, -20, -40);
      triangle(20, -5, 0, -20, 20, -40);
      ellipse(0, 50, 40, 60);
      circle(0, 0, 40);
      ellipse(20, 80, 25, 20);
      ellipse(-20, 80, 25, 20);
      ellipse(-20, 30, 25, 20);
      ellipse(20, 30, 25, 20);
      
      if(millis()-ultimoMaullido < 1000 )
      {
        fill(30);
        textSize(30);
        text("Miiiiiiaaaauuu!!!!", 30, -10);
      }
      
    popMatrix();
  }
  
  void Maullar()
  {
    ultimoMaullido = millis();
  }
}
