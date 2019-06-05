class ship extends GameObject {
  
  ship(){ //Spawns ship with no speed in the center
  x=width/2;
  y=height/2;
  dx=0;
  dy=0;
  }
  
  void show() {
    imageMode(CENTER);
    image(ships[0],x,y,30,50);
    //fill(0,0,255);
    //rect(x,y,20,30);
    
    
  }
  
  void act() { //Direction + Speed
    dx=0;
    dy=0;
    if(w)dy = -5;
    if(a)dx = -5;
    if(s)dy = 5;
    if(d)dx = 5;
    if(space) engine.add(new Bullet());
    
    x = x + dx;
    y = y + dy;
    
  }
  
  boolean Died(){ //Added for later when enemys added
    return false;
 }
}
