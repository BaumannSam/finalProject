class Bullet extends GameObject {

  Bullet() { //Starts bullets at ship location and speed
    x=playerShip.x;
    y=playerShip.y;
    dx=0;
    dy=-10;
  }

  void show() {
    fill(102, 255, 102);
    rect(x, y, 5, 5);
  }

  void act() { //Bullets stay on curret spawned course
    x=x+dx;
    y=y+dy;
  }

  boolean delete() { //Removes Bullets once off screen
    return y<0;
  }
}
