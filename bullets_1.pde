class bullets1 {

  float bullx=100;
  float bully=600;
  float velocity1=10;
  float distance;

  bullets1 (float a1, float b1) {
    bullx = a1;
    bully = b1;
  }

  void display() {
    noStroke();
    fill(#F98801);
    ellipse(bullx, bully, 25, 25);
    fill(#FFFFFF);
    ellipse(bullx, bully, 20, 20);
    fill(#F98801);
    textAlign(CENTER);
    textSize(20);
    text("λ", bullx, bully+8);
  }
  
  boolean hit() {
    distance = dist(bullx, bully, Glory.xx, Glory.yy);
    
    if (distance<Glory.radius/2 + 25/2){
      return true;
    }
    else {
      return false;
    }
  }

  void move() {
    bullx += velocity1;
  } //move
} // class
