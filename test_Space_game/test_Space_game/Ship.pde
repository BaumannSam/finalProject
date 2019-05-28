class ship extends GameObject {
  
  ship(){
  x=width/2;
  y=height/2;
  dx=0;
  dy=0;
  }
  
  void show() {
    fill(0,0,255);
    rect(x,y,30,50);
    
    
  }
  
  void act() {
    dx=0;
    dy=0;
    if(w)dy = -5;
    if(a)dx = 5;
    if(s)dy = 5;
    if(d)dx = -5;
    
    x = x + dx;
    y = y + dy;
    
    
  }
}
