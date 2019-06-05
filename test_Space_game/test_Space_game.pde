

ArrayList<GameObject> engine;
boolean w, a, s, d, space;
PImage[] ships = new PImage[3];

////////////////////////////////////////////////////////////////////

ship playerShip;

void setup() {
  size(600, 600, FX2D); 
  engine = new ArrayList<GameObject>(1000);
  rectMode(CENTER);

  ////////////////////////////////////////////////////////////////////

  //Player Ship Stuff
  playerShip = new ship();
  engine.add(playerShip);
  engine.add(new launcher());
  ships[0] = loadImage("ships1.png");
  ships[1] = loadImage("ships2.png");
}

void draw() {
  background(0);

  ////////////////////////////////////////////////////////////////////

  int i = engine.size()-1;
  while (i >= 0) { //goes through all objects in game, adds  stars
    GameObject new_obj = engine.get(i);
    new_obj.show();
    new_obj.act();
    if (new_obj.delete()) {
      engine.remove(i); // removes stars once off screen
    }
    i--;
  }
  /////////////////////////////////////////////////////////////////////

  //Temp game objects, Current obj (Star)
  engine.add(new Stars());
}

///////////////////////////////////////////////////////////////////// 

void keyPressed() {
  if (key=='W'|| key=='w')  w=true; 
  if (key=='A' || key=='a') a=true;
  if (key=='S' || key=='s') s=true;
  if (key=='D' || key=='d') d=true;
  if (key==' ')             space=true;
}
void keyReleased() {
  if (key=='W'|| key=='w')  w=false; 
  if (key=='A' || key=='a') a=false;
  if (key=='S' || key=='s') s=false;
  if (key=='D' || key=='d') d=false;
  if (key==' ')             space=false;
}
