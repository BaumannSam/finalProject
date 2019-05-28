ArrayList<GameObject> engine;
boolean w, a, s, d, space;

void setup() {
  size(600, 600, FX2D);
  engine = new ArrayList<GameObject>(100000);
  rectMode(CENTER);
  //add final ship here
}

void draw() {
  background(0);
  ////////////////////////
  int i = engine.size()-1;
  while (i >= 0) { //goes through all objects in game, adds  stars
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()) {
      engine.remove(i); // removes stars once off screen
    }


    i--;
  }

  engine.add(new Stars()); //Temp game obj
  engine.add(new ship()); //Temp Ship for testing
}

void keyPressed() {
  if (key=='W') {
    w=true; }
    
  if (key=='A') {
    a=true; } 
    
  if (key=='S') {
    s=true; }
    
  if (key=='D') {
    d=true;
    
  }
}

void keyReleased(){
  w=false;
  a=false;
  s=false;
  d=false;
  
}
    
    
