class Stars {
  private int x, y, xspeed=-7, yspeed=0, size;
  public Stars() {
    x=(int)(Math.random()*800);
    y=(int)(Math.random()*420-25);
    size=(int)(Math.random()*3);  
  }

  public void show() {
    ellipse(x, y, size, size);
      fill(255, 255, 255);
    }
  
  public void move() {
    x += xspeed;
    y += yspeed;
    if (y>400) {
      y=-5;
    }
    if (x<1) {
      x=800;
    }
    if (x>800) {
      xspeed*=-1;
    }
  }
}
