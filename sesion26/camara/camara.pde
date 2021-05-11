import processing.video.*;

Capture cam;

void setup() {
  size(1280, 480);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      print(" ["+str(i)+"] "); println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[1]);
    cam.start();     
  }      
  frameRate(30);
}

void draw() {
  if (cam.available() == true) {
    cam.read();
 
  
  int size = cam.width * cam.height;
  
  PImage img = cam.copy();
  
  cam.loadPixels();
  // Negativo
  for(int k = 0; k < size; k++) 
  {
    color c = cam.pixels[k];
    cam.pixels[k] = color(255 - red(c), 255 - green(c), 255 - blue(c));
  }
  cam.updatePixels();
  image(img, 0, 0);
  image(cam, 640, 0);
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
   }
}
