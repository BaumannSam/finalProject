PGraphics graph;
//Grow
int sec = 0, totalTime = 1000, snowWait = 3, savedTime;
float grow = 0;
boolean trigger = true;

SnowFlake [] snow=new SnowFlake[1000];
void setup() {
  size(800, 400);
  noStroke();
  for (int i=0; i<snow.length; i++) {
    snow[i]=new SnowFlake();
  }
}

void draw() {
  background(0);
  text();
  house();
  grow();
  checktime();
  keyPressed();
  for (int i=0; i<snow.length; i++) {
    snow[i].move();
    snow[i].show();
  }
}


void checktime() {
  int timepass=millis() - savedTime;
  if (timepass > totalTime) {
    sec++;
    if (sec > snowWait) {
      grow -= 1;
    }
    savedTime = millis();
  }
}

public void grow() {
  if (trigger==false) {
    fill(random(255), random(255), random(255));
    rect(0, height, width, grow);
    if (sec > snowWait) {
      fill(255, 255, 255);
      rect(0, height, width, grow);
    }
    if (grow < -200) {
      grow = -200;
    }
  } else {
    fill(255, 255, 255);
    rect(0, height, width, grow);
    if (sec > snowWait) {
      fill(255, 255, 255);
      rect(0, height, width, grow);
    }
    if (grow < -200) {
      grow = -200;
    }
  }
}

public void house() {
  fill (#A5442A);
  rect (100, 0, 300, 800); // body of house
  fill(#D3883C);
  rect (300, 300, 50, 100); // Door  
  if (trigger == false) {
    fill(random(255), random(255), random(255));
  } else {
    fill(#E8E109);
  }


  rect (120, 300, 170, 50);  // first floor window

  rect (140, 200, 50, 50); // Second floor left window
  rect (220, 200, 50, 50); // Second floor middle window 
  rect (300, 200, 50, 50); // Second floor right window 

  rect (140, 100, 50, 50); // third floor left
  rect (220, 100, 50, 50); // third floor middle 
  rect (300, 100, 50, 50); // third floor right

  rect (140, 0, 50, 50); // forth floor left
  rect (220, 0, 50, 50); // forth floor middle 
  rect (300, 0, 50, 50); // forth floor right
}

public void text() {
  textSize(32);
  if (trigger==false) {
    fill(random(255), random(255), random(255));
    text("Happy", 500, 200); 
    fill(random(255), random(255), random(255));
    text("Holidays", 500, 250);
  } else { 
    fill(255, 255, 255);
    text("Happy", 500, 200); 
    text("Holidays", 500, 250);
  }
}

public void mousePressed() {
  if (trigger == true)
    trigger = false;
  else
    trigger = true;
}
