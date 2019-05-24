class SnowFlake {
  private int x, y, xspeed=5, yspeed=5, size, grow;
  public SnowFlake () {
    x=(int)(Math.random()*800);
    y=(int)(Math.random()*421)-210;
    xspeed=(int)(Math.random()*3)-1;
    yspeed=(int)(Math.random()*2)+1;
    size=(int)(Math.random()*10)-3;
    grow=0;
  }

  public void show() {
    ellipse(x, y, size, size);
    if (trigger==false) {
      fill(random(255), random(255), random(255));
    } else {
      fill(255, 255, 255);
    }
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
      x=1;
    }
  }
}
