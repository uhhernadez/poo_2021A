ArrayList<Covid> pandemia;
int alcance;
int tiempo;
int tiempo_incubacion;
void setup()
{
  size(1920, 1024);
  pandemia = new ArrayList<Covid>();
  alcance = 2;
  tiempo = millis();
  tiempo_incubacion = 4000;
  pandemia.add(new Covid(width/2.0, height/2.0, random(-5, 5), random(5,5)));
}

void draw()
{
  background(255);
  fill(0);
  textSize(60);
  
  for(Covid c : pandemia)
  {
    c.Dibujar();
  }
  
  text(pandemia.size()+" "+ millis()/1000.0, width/2, 80);
  
  if(millis() - tiempo > tiempo_incubacion)
  {
    int n = pandemia.size();
    for(int k = 0; k < n; k++) {
      Covid c = pandemia.get(k);
      float x = c.x;
      float y = c.y;
      
      for(int i = 0; i < alcance; i++) {
         pandemia.add(new Covid(x,y, random(-5, 5), random(5,5)));       
      }
    }
    
    tiempo = millis();
  }
}
