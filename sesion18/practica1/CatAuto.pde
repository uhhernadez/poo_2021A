class CatAuto
{
  Sprite walk;
  float x;
  float y;
  float vx;
  float vy;
  
  CatAuto()
  {
    walk = new Sprite("cat","Walk");
    x = random(0, width);
    y = random(0, height);
    vx = 2;
    vy = 4;
  }


  void Draw()
  {
    pushMatrix();
    translate(x, y);
      pushMatrix();
        if(vx > 0) 
        {
          walk.Draw();
        } 
        else
        {
          scale(-1,1);
          walk.Draw();
        }
      popMatrix();
    x+=vx;
    if(x < 0 || x > width) 
    {
      vx*=-1;
    }
    y+=vy;
  
    if( y < 0 || y > height)
    {
      vy*=-1;
    }
    
    popMatrix();
  }
}
