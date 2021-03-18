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
  
  for(Estrella e : estrellas)
  {
    e.Dibujar();
  }
  
  if(millis() - tiempo_agregar > 10)
  {
    estrellas.add(new Estrella());
    tiempo_agregar = millis();
  }
}


void mousePressed()
{
  estrellas.add(new Estrella());
}
