class Phanton
{
  float x;
  float y;
  boolean invisible;
  boolean scream;
  float scream_time;
  
  PShape gshape;
  
  Phanton()
  {
    invisible = true;
    x = width / 2;
    y = height / 2;
    gshape = loadShape("ghost.svg");
    invisible = false;
    scream = false;
  }

  void Draw()
  {
    pushMatrix();
      translate(x, y);
      shapeMode(CENTER);
      if(invisible)
      {
        gshape.disableStyle();
        fill(50, 50, 50, 50);
        stroke(50, 50, 50, 50);
      } 
      else 
      {
        gshape.enableStyle();
      }
      shape(gshape, 0, 0);
      
      if(scream)
      {
        pushMatrix();
          if(millis() - scream_time < 500)
          {
            fill(255, 0, 0);
            text("BuuuuBuuuu!!!!", 0, -50);
          } 
          else
          {
            scream = false;
          }
        popMatrix();
      }
    popMatrix();
  }
  
  void Translate(float dx, float dy)
  {
    x += dx;
    y += dy;
  }
  
  void Invisible()
  {
    invisible = true;
  }
  
  void Normal()
  {
    invisible = false;
  }
  
  void Scream()
  {
     scream = true;
     scream_time = millis();
  } 
}
