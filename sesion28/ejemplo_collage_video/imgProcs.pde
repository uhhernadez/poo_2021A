PImage imgNegativo(PImage in) {
  PImage out = in.copy();
  int size = out.width * out.height;
  out.loadPixels();
  // Negativo
  for (int k = 0; k < size; k++) {
    color c = cam.pixels[k];
    out.pixels[k] = color(255 - red(c), 255 - green(c), 255 - blue(c));
  }
  out.updatePixels();
  return out;
}

PImage imgZeroRed(PImage in) {
  PImage out = in.copy();
  int size = out.width * out.height;
  out.loadPixels();
  // Negativo
  for (int k = 0; k < size; k++) {
    color c = cam.pixels[k];
    out.pixels[k] = color(0, 255 - green(c), 255 - blue(c));
  }
  out.updatePixels();
  return out;
}

PImage imgZeroGreen(PImage in) {
  PImage out = in.copy();
  int size = out.width * out.height;
  out.loadPixels();
  // Negativo
  for (int k = 0; k < size; k++) {
    color c = cam.pixels[k];
    out.pixels[k] = color(255 - red(c), 0, 255 - blue(c));
  }
  out.updatePixels();
  return out;
}

PImage imgZeroBlue(PImage in) {
  PImage out = in.copy();
  int size = out.width * out.height;
  out.loadPixels();
  // Negativo
  for (int k = 0; k < size; k++) {
    color c = cam.pixels[k];
    out.pixels[k] = color(255 - red(c), 255 - green(c), 0);
  }
  out.updatePixels();
  return out;
}

PImage imgIntercambio(PImage in) {
  PImage out = in.copy();
  int size = out.width * out.height;
  out.loadPixels();
  // Negativo
  for (int k = 0; k < size; k++) {
    color c = cam.pixels[k];
    out.pixels[k] = color(blue(c), red(c), green(c));
  }
  out.updatePixels();
  return out;
}
