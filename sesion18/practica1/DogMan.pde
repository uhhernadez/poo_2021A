class DogMan
{
  Sprite walk;
  Sprite idle;
  Sprite dead;
  
  float x;
  float y;
  float vx;
  float vy;
  boolean alive;
  
  DogMan()
  {
    alive = true;
    walk = new Sprite("dog","Walk");
    idle = new Sprite("dog","Idle");
    dead = new Sprite("dog","Dead");
    
    x = random(0, width);
    y = random(0, height);
    vx = 2;
    vy = 2;
  }


  void Draw()
  {
    pushMatrix();
    translate(x, y);
      pushMatrix();
      if(alive)
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
          walk.Draw();
        } 
        else
        {
          idle.Draw();
        }
      } 
      else 
      {
        dead.Draw();
      }
      popMatrix();
    popMatrix();
  }

  void Kill()
  {
    alive = false;
  }
}
