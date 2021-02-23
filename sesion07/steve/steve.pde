void setup() 
{
  size(1024, 1025);
  noStroke(); 
}

void draw() 
{
  background(255);
  for(int k = 0; k< 5; k++)
  {
    steve(k*256,0);
    //steve(256,0);
  }
  //steve(0,512);
  //steve(512,512);
}


void steve(float x, float y) 
{
  //.....Cabeza.....
  fill(191, 152, 140);
  rect(x + 200, y + 20, 100, 90);

  //.....cuerpo.....
  fill(2, 164, 211);
  rect(x+ 200, y + 110, 100, 120);

  //.....brazos.....
  //manga
  fill(2, 164, 211);
  rect(x + 150, y + 110, 50, 50);

  fill(2, 164, 211);
  rect(x + 300, y + 110, 50, 50);

  //piel
  fill(191, 152, 140);
  rect(x + 300, y + 160, 50, 90);

  fill(191, 152, 140);
  rect(x + 150, y + 160, 50, 90);

  //.....piernas.....
  fill(100);
  rect(x + 200, y + 230, 100, 160);
  //zapatos
  fill(50, 80, 140);
  rect(x + 200, y + 230, 100, 130);

  //Objetos sobrepuestos
  //Camisa desfajada
  fill(2, 164, 211);
  rect(x + 288, y + 230, 12, 12);

  fill(2, 164, 211);
  rect(x + 288, y + 242, 12, 12);

  fill(2, 164, 211);
  rect(x + 276, y + 230, 12, 12);

  //Abertura de la camisa
  fill(191, 152, 140);
  rect(x + 225, y + 110, 12, 12);
  rect(x + 237, y + 110, 12, 12);
  rect(x + 249, y + 110, 12, 12);
  rect(x + 261, y + 110, 12, 12);
  rect(x + 237, y + 122, 12, 12);
  rect(x + 249, y + 122, 12, 12);
  //Rostro
  //Ojos
  fill(50, 80, 140);
  rect(x + 225, y + 60, 12, 10);
  rect(x + 261, y + 60, 12, 10);

  fill(255);
  rect(x + 213, y + 60, 12, 10);
  rect(x + 273, y + 60, 12, 10);

  //Cabellera
  fill(52, 41, 31);
  rect(x + 300, y + 20, -100, 20);
  rect(x + 200, y + 40, 12, 12);
  rect(x + 288, y + 40, 12, 12);

  rect(x + 225, y + 98, 12, 12);
  rect(x + 237, y + 98, 12, 12);
  rect(x + 249, y + 98, 12, 12);
  rect(x + 261, y + 98, 12, 12);
  rect(x + 225, y + 86, 12, 12);
  rect(x + 261, y + 86, 12, 12);

  //nariz
  fill(124, 94, 66);
  rect(x + 237, y + 74, 12, 12);
  rect(x + 249, y + 74, 12, 12);
}
