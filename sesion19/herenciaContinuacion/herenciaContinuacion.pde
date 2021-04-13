//Personaje p;
Gato felpuchina;
Perro solovino;

ArrayList<Personaje> personajes;

void setup()
{
  size(512, 512);
  solovino = new Perro();
  felpuchina = new Gato();
  personajes = new ArrayList<Personaje>();
  
  personajes.add(new Perro());
  personajes.add(new Perro());
  personajes.add(new Gato());
  personajes.add(new Gato());
}

void draw()
{
  background(0);
  //solovino.Dibujar();
  //felpuchina.Dibujar();
  //Personaje fp = felpuchina; // Acceso por la clase base, polimorfismo
  //fp.Dibujar();
  
  for(Personaje p: personajes) 
  {
    p.Dibujar();
  }
}
