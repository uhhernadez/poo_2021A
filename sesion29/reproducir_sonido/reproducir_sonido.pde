import processing.sound.*;
SoundFile file;
boolean play;
void setup() {
  size(640, 360);
  background(255);
    
  file = new SoundFile(this, "pajaritos.wav");
  //file.play();
  play = false;
}

void draw() {
  //file.amp(0.1);
}

void mousePressed() {
  if(play) {
    file.stop();
    play = false;
  } else {
    file.play();
    play = true;
  }
}
