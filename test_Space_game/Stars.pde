class Stars extends GameObject {
  
  
  Stars() {
    x = random(0,width);
    y = 0;
    dx = 0;
    dy = random(3,5);
  }
  void show(){ //overides Game Objet
    fill(255);
    rect(x,y,dy,dy);
  }
  void act() { //overides Game Objet
    x = x + dx;
    y = y + dy;
 }
 
 boolean delete(){
   return y > height;
 }
}
