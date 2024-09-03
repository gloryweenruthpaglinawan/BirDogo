class Tweet
{
  float xx; //700
  float yy; //600
  float radius=100;
  float speedXX=10;
  float speedYY=10;
  int lives=5;
  float bcount=startingbullets;//number of bullets
  //initializing the class
  Tweet(float Aa, float Bb) {
    xx = Aa;
    yy = Bb;
  }

  void display() {
    if (lives > 0) {
      //body
      fill(#E34E4E); //red
      ellipse( xx, yy, radius, radius );
      //outer eye
      fill(255);
      ellipse( xx-20, yy-20, radius-70, radius-70 );
      //center eye
      fill(0);
      ellipse ( xx-25, yy-20, 20, 20 );
      //inner eye
      fill(255);
      ellipse( xx-30, yy-20, 10, 10 );
      //beak
      fill(#B92929);
      triangle( xx-65, yy-20, xx-40, yy-30, xx-35, yy-5 ); // upper
      fill(#B92929);
      triangle( xx-60, yy+5, xx-50, yy-15, xx-35, yy-5 );
      //wing
      fill(#B92929);
      triangle( xx, yy+15, xx+50, yy+15, xx+90, yy-20 );
    } else {
      //body
      fill(#B76B77); //red
      ellipse( xx, yy, radius, radius );
      //beak
      fill(#834D55);
      triangle( xx-65, yy-20, xx-40, yy-30, xx-35, yy-5 ); // upper
      fill(#834D55);
      triangle( xx-60, yy+5, xx-50, yy-15, xx-35, yy-5 );
      //wing
      fill(#716466);
      triangle( xx, yy+15, xx+50, yy+15, xx+90, yy-20 );
      //outer eye
      fill(255);
      ellipse( xx-20, yy-20, radius-70, radius-70 );
      fill(0);
      textAlign(CENTER);
      textSize(25);
      text("X", xx-20, yy-10);
    }
  } //end void bird

  void move() {
    if (!died) {
      if (arleft && xx>=500) {
        xx-=speedXX;
      }
      if (arright && xx<width-60) {
        xx+=speedXX;
      }
      if (arup && yy>+50) {
        yy-=speedYY;
      }
      if (ardown && yy<height-100) {
        yy+=speedYY;
      }
    }
  }
}
