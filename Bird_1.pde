class Bird
{
  float x; //100
  float y; //600
  float radius=100;
  float speedX=10;
  float speedY=10;
  int lives=5; 
  float bcount=startingbullets;
  //initializing the class
  Bird(float a, float b) {
    x = a;
    y = b;
  }

  void display() {
    if (lives>0) {
      //body
      fill(#548AD9);
      ellipse( x, y, radius, radius );
      //outer eye
      fill(255);
      ellipse( x+20, y-20, radius-70, radius-70 );
      //center eye
      fill(0);
      ellipse ( x+25, y-20, 20, 20 );
      //inner eye
      fill(255);
      ellipse( x+30, y-20, 10, 10 );
      //beak
      fill(#1C5AB4);
      triangle( x+35, y, x+40, y-30, x+65, y-20 );
      fill(#1D5196);
      triangle( x+35, y, x+48, y-10, x+60, y+5 );
      //wing
      fill(#1C5AB4);
      triangle( x, y+15, x-50, y+15, x-80, y-20 );
    } else { //dead bird
      //body
      fill(#303552);
      ellipse( x, y, radius, radius );
      //wing
      fill(#7F8295);
      triangle( x, y+15, x-50, y+15, x-80, y-20 );
      //beak
      fill(#4D5583);
      triangle( x+35, y, x+40, y-30, x+65, y-20 );
      fill(#4D5583);
      triangle( x+35, y, x+48, y-10, x+60, y+5 );
      //outer eye
      fill(255);
      ellipse( x+20, y-20, radius-70, radius-70 );
      fill(0);
      textAlign(CENTER);
      textSize(25);
      text("X", x+20, y-10);
    }
  } //end void bird

  void move() {
    if (!died) {
      if (left && x>+70) {
        x-=speedX;
      }
      if (right && x<=300) {
        x+=speedX;
      }
      if (up && y>+50) {
        y-=speedY;
      }
      if (down && y<height-100) {
        y+=speedY;
      }
    }
  }
}
