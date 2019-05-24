PGraphics graph;
Stars [] Star=new Stars[1000];
void setup() {
  size(800, 400);
  noStroke();
  for (int i=0; i<Star.length; i++) {
    Star[i]=new Stars();
  }
}

void draw() {
  background(0);
  for (int i=0; i<Star.length; i++) {
    Star[i].move();
    Star[i].show();
  }
}
