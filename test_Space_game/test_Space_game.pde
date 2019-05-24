ArrayList<GameObject> engine;

void setup() {
  size(600, 600, FX2D);
  engine = new ArrayList<GameObject>(100000);
  rectMode(CENTER);
  }

void draw() {
  background(0);
  
  
  int i = engine.size()-1;
  while(i >= 0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()){
      engine.remove(i);
    }
    
    
    i--;
  }
  
  engine.add(new Stars());
}
