class bullets2 {

  float bullxx=600;
  float bullyy=600;
  float velocity2=10;
  float distance;

  bullets2 (float a2, float b2) {
    bullxx = a2;
    bullyy = b2;
  }

  void display() {
    noStroke();
    fill(#F98801);
    ellipse(bullxx, bullyy, 25, 25);
    fill(#FFFFFF);
    ellipse(bullxx, bullyy, 20, 20);
    fill(#F98801);
    textAlign(CENTER);
    textSize(20);
    text("λ", bullxx, bullyy+8);
  }

  boolean hit() {
    distance = dist(bullxx, bullyy, Jello.x, Jello.y);

    if (distance<Jello.radius/2 + 25/2) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    bullxx -= velocity2;
  } //move
} // class
