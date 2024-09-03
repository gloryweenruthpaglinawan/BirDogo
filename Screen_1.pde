// Intro Screen
int g1 = -200; //big hills
int g2 = 200;
int g3 = 600;
int g4a = 500; //clouds
int g4b = 100;
int g5 = -200; //small hills
int g6 = 0;
int g7 = 200;
int g8 = 400;
int g9 = 600;
int g10 = 800;

void screen1() {
  //sky
  background(#00D8FF);
  noStroke();
  //clouds
  fill(#FFFFFF);
  ellipse(g4a, 150, 100, 100);
  ellipse(g4a, 200, 100, 100);
  ellipse(g4a-50, 200, 100, 100);
  ellipse(g4a+50, 200, 100, 100);
  ellipse(g4b, 250, 100, 100);
  ellipse(g4b, 300, 100, 100);
  ellipse(g4b-50, 300, 100, 100);
  ellipse(g4b+50, 300, 100, 100);
  noStroke();
  //big hills
  fill(#2B9B13);
  ellipse(g1, 600, 400, 700);
  ellipse(g2, 600, 400, 500);
  ellipse(g3, 600, 400, 300);
  noStroke();
  fill(#0F3903); //small hills
  ellipse(g5, 600, 200, 150);
  ellipse(g6, 600, 200, 150);
  ellipse(g7, 600, 200, 150);
  ellipse(g8, 600, 200, 150);
  ellipse(g9, 600, 200, 150);
  ellipse(g10, 600, 200, 150);
  fill(#301D06); //ground
  rect(0, 600, 800, 300);
  //moving big hills
  g1 = g1 + 2;
  g2 = g2 + 2;
  g3 = g3 + 2;
  //moving clouds
  g4a = g4a + 1; 
  g4b = g4b + 1; 
  //moving small hills
  g5 = g5 + 3; 
  g6 = g6 + 3;
  g7 = g7 + 3;
  g8 = g8 + 3;
  g9 = g9 + 3;
  g10 = g10 + 3;
  Birdogo();
  logos();
  //movement
  if (g1 == 1000) {
    g1 = -200;
  }
  if (g2 == 1000) {
    g2 = -200;
  }
  if (g3 == 1000) {
    g3 = -200;
  }
  if (g4a == 1000) {
    g4a = -200;
  }
  if (g4b == 1000) {
    g4b = -200;
  }
  if (g5 >= 1000) {
    g5 = -200;
  }
  if (g6 >= 1000) {
    g6 = -200;
  }
  if (g7 >= 1000) {
    g7 = -200;
  }
  if (g8 >= 1000) {
    g8 = -200;
  }
  if (g9 >= 1000) {
    g9 = -200;
  }
  if (g10 >= 1000) {
    g10 = -200;
  }
  if (mousePressed) {
    screen = 1;
  }
}
void Birdogo() {
  fill(#E8C183);
  rect(190, 100, 420, 140, 25);
  fill(#000000);
  rect(200, 110, 400, 120, 25);
  fill(#FF5500);
  textAlign(CENTER);
  textSize(100);
  text("BirDogo", 400, 200);

  fill(#E8C183);
  rect(210, 300, 380, 50, 25);
  fill(#000000);
  rect(220, 310, 360, 30, 25);
  fill(#FF5500);
  textAlign(CENTER);
  textSize(25);
  text("CLICK ANYWHERE TO START", 400, 335);
}
void logos() {
  noStroke();
  fill(#F98801);
  ellipse(400, 600, 100, 100);
  fill(#FFFFFF);
  ellipse(400, 600, 90, 90);
  fill(#F98801);
  textAlign(CENTER);
  textSize(90);
  text("λ", 400, 633);
}
