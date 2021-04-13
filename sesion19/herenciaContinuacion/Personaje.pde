class Personaje
{
  Sprite caminar;
  Sprite espera;
  Sprite muerte;
  
  float x;
  float y;
  float vx;
  float vy;
  boolean vivo; 
  
  Personaje(String tipo)
  {
    caminar = new Sprite(tipo,"Walk");
    espera = new Sprite(tipo,"Idle");
    muerte = new Sprite(tipo,"Dead");
    vivo = true;    
    
    x = random(0, width);
    y = random(0, height);
    vx = 2;
    vy = 2;
  }
  
  void Dibujar()
  {
    pushMatrix();
    translate(x, y);
      pushMatrix();
      if(vivo)
      {
        if(keyPressed == true)
        {
          if (key == 'i') 
          {
            y -= vy;
          }
          else if (key == 'j')
          {
            x -= vx;
            scale(-1,1);
          }   
          else if (key == 'k')
          {
            y += vy;
          }
          else if(key == 'l')
          {
            x+= vx;
          }
          caminar.Draw();
        } 
        else
        {
          espera.Draw();
        }
      } 
      else 
      {
        muerte.Draw();
      }
      popMatrix();
    popMatrix();
  }
  
}
