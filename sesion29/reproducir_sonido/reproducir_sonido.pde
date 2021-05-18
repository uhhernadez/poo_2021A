import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  background(255);
    
  file = new SoundFile(this, "pajaritos.wav");
  file.play();
}

void draw() {
}
