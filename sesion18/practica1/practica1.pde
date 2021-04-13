CatAuto felpu;
CatAuto getrudis;
CatMan ribey;
DogMan solovino;
Background bg;
void setup()
{  
  size(512, 512);
  felpu = new CatAuto();
  getrudis = new CatAuto();
  ribey = new CatMan();
  solovino = new DogMan();
  bg = new Background();
}

void draw()
{
  bg.Draw();
  felpu.Draw();
  getrudis.Draw();
  ribey.Draw();
  solovino.Draw();
  
}

void mousePressed()
{
  solovino.Kill();

}
