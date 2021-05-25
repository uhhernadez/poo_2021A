import processing.video.*; 
Movie movie; 

void setup() {  
  size(320, 240);  
  movie = new Movie(this, "testmovie.mov");  
  movie.loop();
}

void movieEvent(Movie movie) {  
  movie.read();
}

void draw() {
  image(movie, 0, 0);
}
