import processing.video.*; 
import controlP5.*;

Movie movie; 
ControlP5 cp5;
Rect indicador;
boolean play;

void setup() {  
  size(1280, 720);  
  movie = new Movie(this, "sample.mp4");  
  //movie.loop();
  cp5 = new ControlP5(this);
  play = true;
  indicador = new Rect(110, 10, 30, 30);  
  
 cp5.addSlider("jumpMovie") // Evento,
    .setPosition(0, height - 20) // Posición del control en el canvas
    .setSize(1280, 20)
    .setRange(0, 1.0) // Rango de valores para el slider 0 - 1
    .setValue(0.0);
  
  cp5.addButton("playPause")
    .setValue(0)
    .setPosition(10, 10)
    .setSize(50, 19);
    
 cp5.addButton("stop")
    .setValue(0)
    .setPosition(10, 30)
    .setSize(50, 19); 
}

void movieEvent(Movie movie) {  
  movie.read();
}

void draw() {
  image(movie, 0, 0);
  indicador.Dibujar();
  text(movie.width + "x" + movie.height + " " + movie.time(), 0, 20);
}

public void playPause(int value) {
  indicador.Intercambiar();
  if(play) {
    movie.pause();
    play = false;
  } else {
    movie.play();
    play = true;
  }
}

public void stop() {
  if(play) {
    indicador.Intercambiar();
    play = false;
  }
  movie.stop();
}


public void jumpMovie(float v) {
  if(play) {
    movie.jump(movie.duration()*v);
  }
  
}
