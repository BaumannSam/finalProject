class enemy extends GameObject {

  enemy(float incomingX, float incomingY) {
    x = incomingX;
    y = incomingY;
    dx = 0;
    dy = 3;
    hp = 50;
  }

  void show() {
    image(ships[1], x, y, 50, 50);
   // fill(255,255,255);
   // rect(x,y,50,50);
  }

  void act() {
    x = x + dx;
    y = y + dy;


    int i=0;
    while (i < engine.size()) {
      GameObject thing = engine.get(i);
      if ( thing instanceof Bullet) {
        if (rectRect(x, y, 50, 50, thing.x, thing.y, 5, 5)) {
          hp = hp-1; // temp numbers
        }
      }


      i++;
    }
  }

  boolean delete() {
    return y > height || hp<=0;
  }
}
