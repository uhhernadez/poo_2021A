ArrayList<Estrella> estrellas;
int tiempo_agregar;

void setup()
{
  size(1920, 1024);
  int N = 500;
  estrellas = new ArrayList<Estrella>();
  
  for(int k = 0; k < N; k++)
  {
    estrellas.add(new Estrella());
  }
  
  tiempo_agregar = millis();
}

void draw()
{
  background(0);
  
  textSize(50);
  text(estrellas.size(), 10, 80);
  
  for(Estrella e : estrellas)
  {
    e.Dibujar();
  }
  
  if(millis() - tiempo_agregar > 5)
  {
    estrellas.add(new Estrella());
    tiempo_agregar = millis();
  }
  
  for(int k = 0; k < estrellas.size(); k++ )
  {
    Estrella e = estrellas.get(k);
    if(e.y > height)
    {
     estrellas.remove(k);
     k--;
    }
  }
  
}


void mousePressed()
{
  estrellas.add(new Estrella());
}
