import processing.sound.*;
SoundFile file;

int screen;
int x1;
int x2;
boolean left=false, right=false, up=false, down=false;
boolean arleft=false, arright=false, arup=false, ardown=false, cont=false, died=false;
boolean shootB=false;
boolean shootR=false;
ArrayList <bullets1> b1= new ArrayList <bullets1> ();
ArrayList <bullets2> b2= new ArrayList <bullets2> ();
int startingbullets=3;

Bird Jello;
Tweet Glory;
bullets1 BulletB;
bullets2 BulletR;

void setup () {
  size (800, 700);
  Jello = new Bird(100, 600);
  Glory = new Tweet(700, 600);
  
  file = new SoundFile(this, "Farm.wav");
  file.play();
}
void draw () {
  if (screen == 0) {
    b1= new ArrayList <bullets1> (); // generate array of bullets
    b2= new ArrayList <bullets2> ();
    Jello = new Bird(100, 600); //calling of classes
    Glory = new Tweet(700, 600);
    cont=false; //screen in continue
    died=false;
    screen1(); //calls for starting screen
  }
  if (screen == 1) {
    screen2();
    //character stats
    fill(#000105);
    textSize(20);
    text("BLUE LIVES: "+Jello.lives, 100, 20);
    text("RED LIVES: "+Glory.lives, 700, 20);
    text("BULLETS: "+(Jello.bcount), 100, 50);
    text("BULLETS: "+(Glory.bcount), 700, 50);

    Jello.display();
    Glory.display();

    //bullets ni Jello / blue bird
    for (x1 = b1.size()-1; x1 >= 0; x1--) {  
      b1.get(x1).display();
      b1.get(x1).move();
      if (b1.get(x1).hit()) {
        b1.remove(x1);
        if (Glory.lives != 0) {
          Glory.lives--;
        }
      }
    }
    //bullets ni glory / red bird
    for (x1=b2.size()-1; x1>=0; x1--) {  
      b2.get(x1).display();
      b2.get(x1).move();
      if (b2.get(x1).hit()) {
        b2.remove(x1);
        if (Jello.lives!=0) Jello.lives--;
      }
    }
  }
  //bullet cooldown
  if (frameCount%10 == 0 && Glory.bcount != startingbullets) {
    Glory.bcount++;
  }
  if (frameCount%10== 0 && Jello.bcount != startingbullets) {
    Jello.bcount++;
  }

  Jello.move();
  Glory.move();
  if (Jello.lives <= 0) {
    died = true;
    fill(#FF030B, 80);
    rect(50, 50, 700, 600, 50);
    fill(#FF030B);
    textSize(30);
    text(" RED WINS!", width/2, 300);
    text("Press 'P' to continue.", width/2, 350);
    if (cont) screen=0;
  }
  if (Glory.lives <= 0) {
    died = true;
    fill(#6F7AB7, 80);
    rect(50, 50, 700, 600, 50);
    fill(#132690);
    textSize(30);
    text("BLUE WINS!", width/2, 300);
    text("Press P to continue.", width/2, 350);
    if (cont)screen=0;
  }
}
void keyPressed() {

  if (key == 's') {
    down = true;
  }
  if (key == 'w') {
    up = true;
  }
  if (key == 'a') {
    left = true;
  }
  if (key == 'd') {
    right = true;
  }
  if (key == '.') {
    if (Glory.bcount>0&&!died) {
      bullets2 b = new bullets2(Glory.xx, Glory.yy); 
      b2.add(b);
      shootR = true;
      Glory.bcount--;
    }
  }
  if (keyCode == DOWN) {
    ardown = true;
  }
  if (keyCode == UP) {
    arup = true;
  }
  if (keyCode == LEFT) {
    arleft = true;
  }
  if (keyCode == RIGHT) {
    arright = true;
  }
  if (key == ' ') {
    if (Jello.bcount > 0 && !died) {
      bullets1 b = new bullets1(Jello.x, Jello.y); 
      b1.add(b);
      shootB = true;
      Jello.bcount--;
    }
  }
  if (key=='p'||key=='P') {
    if (died) cont=true;
  }
}
void keyReleased() {

  if (key == 's') {
    down = false;
  }
  if (key == 'w') {
    up = false;
  }
  if (key == 'a') {
    left = false;
  }
  if (key == 'd') {
    right = false;
  }
  if (key == '.') {
    shootR = false;
  }
  if (keyCode == DOWN) {
    ardown = false;
  }
  if (keyCode == UP) {
    arup = false;
  }
  if (keyCode == LEFT) {
    arleft = false;
  }
  if (keyCode == RIGHT) {
    arright = false;
  }
  if (key == ' ') {
    shootB = false;
  }
}
