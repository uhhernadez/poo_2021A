class CatMan
{
  Sprite walk;
  Sprite idle;
  Sprite dead;
  float x;
  float y;
  float vx;
  float vy;
  boolean alive;
  CatMan()
  {
    alive = true;
    walk = new Sprite("cat","Walk");
    idle = new Sprite("cat","Idle");
    dead = new Sprite("cat","Dead");
    
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
      if(keyPressed == true)
      {
        if (key == 'w') 
        {
          y -= vy;
        }
        else if (key == 'a')
        {
          x -= vx;
          scale(-1,1);
        } 
        else if (key == 's')
        {
          y += vy;
        }
        else if(key == 'd')
        {
          x+= vx;
        }
        walk.Draw();
      } 
      else
      {
        idle.Draw();
      }
      popMatrix();
    popMatrix();
  }

}
