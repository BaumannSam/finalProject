class launcher extends GameObject {

  launcher() {
    x = width/2;
    y = -50;
    dx = 0;
    dy = 0;
  }

  void show() {
    fill(255, 192, 203);
    rect(x, y, 100, 100);
  }

  void act() {
    if (frameCount < 100) {
      //Do nothing
    } else if (frameCount < 600) {
      singleEnemy(100);
    } else if (frameCount < 1000) {
      singleEnemy(300);
    } else if (frameCount < 1500) {
      randomEnemySingle();
    } else if (frameCount < 2000 ) {
     randomEnemy();
     randomEnemySingle();
     
      
    }
  }

  void singleEnemy(float incomingX) {
    x = incomingX;
    if (frameCount % 100 == 0) {
      engine.add(new enemy(x, y));
    }
  }
  
  void randomEnemySingle() {
    x = random(50, width-50);
    if (frameCount % 50 == 0) {
      engine.add(new enemy(x, y));
      frameCount=1500;
    }
  }

  void randomEnemy() {
    x = random(50, width-50);
    if (frameCount % 50 == 0) {
      engine.add(new Fast_enemy(x, y));
      frameCount=1500;
    }
  }

  boolean delete() {
    return false;
  }
}
