//Game Screen (After start press)

void screen2() {
  background (#00D8FF);
  
  //guide for coordinates
  textSize(50);
  text(mouseX + " " + mouseY, 300, 100); 

  ground();
  bigMountain();
  clouds();
  smallMountain();
}

void smallMountain() { //front
  strokeWeight(0);

  //right side
  fill(#35953D);
  beginShape();
  vertex(150, 384);
  vertex(0, 600);
  vertex(300, 600);
  endShape(CLOSE);

  //rightUpperShade
  fill(#35793B);
  beginShape();
  vertex(150, 384);
  vertex(90, 470);
  vertex(130, 440);
  vertex(157, 468);
  vertex(172, 444);
  vertex(218, 480);
  endShape(CLOSE);
}

void bigMountain() { //back
  //left side
  fill(#35953D);
  beginShape();
  vertex(300, 600);
  vertex(550, 300);
  vertex(800, 600);
  endShape(CLOSE);
  //leftUpperShade
  fill(#35793B);
  beginShape();
  vertex(550, 300);
  vertex(419, 457);
  vertex(492, 417);
  vertex(560, 460);
  vertex(580, 395);
  vertex(662, 437);
  endShape(CLOSE);
}
float c1=150;
float c2=300;
float c3;
float c4;
float c5;
float c6;

void clouds () {
  noStroke();
  strokeWeight(0);
  fill(255);

  ellipse(c1, 190, 80, 80);//150,center
  ellipse(c1-38, 200, 60, 60);
  ellipse(c1+40, 200, 50, 50);
  c1 += 2;
  if (c1 == 1000) {
    c1 = -150;
  }
  fill(#C8D5D5);
  ellipse(c2, 400, 90, 90);//300
  ellipse(c2-70, 418, 60, 60);
  ellipse(c2-45, 430, 80, 40);
  ellipse(c2-40, 395, 40, 40);
  ellipse(c2+50, 415, 60, 60);
  c2 += 1;
  if (c2 == 1000) {
    c2 = -300;
  }
}
void ground() {
  strokeWeight(0);
  fill(#301D06);
  rect(0, 600, 800, 300);
}
