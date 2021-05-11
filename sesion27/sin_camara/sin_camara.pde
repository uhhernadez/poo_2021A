PImage cam;
PImage img;

void setup() {
  size(1280, 480);
  cam = loadImage("test.jpg");
    
  int size = cam.width * cam.height;
  
  img = cam.copy();
  
  cam.loadPixels();
  // Negativo
  for(int k = 0; k < size; k++) 
  {
    color c = cam.pixels[k];
    //cam.pixels[k] = color(255 - red(c), 255 - green(c), 255 - blue(c));
    cam.pixels[k] = color(0, 255 - green(c), 255 - blue(c));

  }
  cam.updatePixels();
}

void draw() {

  image(img, 0, 0, 640, 480);
  image(cam, 640, 0, 640, 480);
}
