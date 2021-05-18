import processing.video.*;
PImage negativo;
PImage nored;
PImage nogreen;
PImage noblue;
PImage intercambio;

int img_width;
int img_height;
float img_scale = .8;
Capture cam;
void setup() {
  size(1536, 768);
  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      print(" ["+str(i)+"] "); 
      println(cameras[i]);
    }

    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[1]);
    cam.start();
  }
}

void draw() {
  if (cam.available() == true) {
    cam.read();
    img_height = floor(img_scale * cam.height);
    img_width = floor(img_scale * cam.width);
    println(img_height, img_width);

    negativo = imgNegativo(cam);
    nored = imgZeroRed(cam);
    nogreen = imgZeroGreen(cam);
    noblue = imgZeroBlue(cam);
    intercambio = imgIntercambio(cam);

    // Renglon 1
    image(cam, 0, 0, img_width, img_height);
    image(negativo, img_width, 0, img_width, img_height);
    image(nored, 2*img_width, 0, img_width, img_height);

    image(nogreen, 0, img_height, img_width, img_height);
    image(noblue, img_width, img_height, img_width, img_height);
    image(intercambio, 2*img_width, img_height, img_width, img_height);

    text(str(cam.width) + " " + str(cam.height), 0, height/2);
  }
}
