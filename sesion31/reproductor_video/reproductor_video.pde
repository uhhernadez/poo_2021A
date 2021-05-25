import processing.sound.*;
import controlP5.*;

PImage logo;
SoundFile file;
ControlP5 cp5;
Rect indicador;
float volumen;
boolean play;
int value_btn;

void setup() {
  size(400, 200);
  background(255);
  cp5 = new ControlP5(this);    
  ////// Todas las variables tienen que estar definidas.
  file = new SoundFile(this, "pajaritos.wav");
  indicador = new Rect(110, 10, 30, 30);  
  play = true;
  logo = loadImage("logo.png");
  ////// Los controles se definen la final
  cp5.addSlider("volumen") // Evento,
    .setPosition(10, 80) // Posición del control en el canvas
    .setSize(200, 20)
    .setRange(0, 1.0) // Rango de valores para el slider 0 - 1
    .setValue(0.5);
  // create a new button with name 'buttonA'
  cp5.addButton("playPause")
    .setValue(0)
    .setPosition(10, 10)
    .setSize(50, 19);
    
 cp5.addButton("stop")
    .setValue(0)
    .setPosition(10, 30)
    .setSize(50, 19);   
}

void draw() {
  background(0);
  file.amp(volumen);
  indicador.Dibujar();
  image(logo, width-80, 0, 80, 80);
}

public void playPause(int value) {
  indicador.Intercambiar();
  if(play) {
    println("Pause !!!");
    file.pause();
    play = false;
  } else {
    println("Reproduce!!!");
    file.play();
    play = true;
  }
}

public void stop() {
  file.stop();
}


/*
void mousePressed() {
 if(play) {
 file.stop();
 play = false;
 } else {
 file.play();
 play = true;
 }
 }
 */
