

ArrayList<GameObject> engine;
boolean w, a, s, d, space;

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
  if (key=='W') {
    w=true; }
  if (key=='A') {
    a=true; } 
  if (key=='S') {
    s=true; }
  if (key=='D') {
    d=true; }
  if (key==' ') {
    space=true; }
}
void keyReleased(){
  w=false;
  a=false;
  s=false;
  d=false;
  space=false;  
}
    
    
