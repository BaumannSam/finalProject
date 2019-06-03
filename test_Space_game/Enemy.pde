class enemy extends GameObject {
  
  enemy(float incomingX, float incomingY) {
    x = incomingX;
    y = incomingY;
    dx = 0;
    dy = 3;
    hp = 10;
  }
  
  void show() {
    fill(255,153,0);
    rect(x,y,50,50);
  }
  
  void act() {
    x = x + dx;
    y = y + dy;
    
  }
  
  boolean delete() {
    return y > height || hp<=0;
  }
}
