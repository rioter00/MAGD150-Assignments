int posX = 25;
float posY = 200;
int ballDiameter = 40;
float velocityY = 0.0; 
float gravity = 1.5;
boolean onGround = false;
float jumpSize = -30;
void setup(){
  size(800, 600);
}

void draw(){
  background(255);
  line(0, height/2, width, height/2);
  update();
}

void update(){
  velocityY = gravity + velocityY;
  posY = velocityY + posY;
  if (posY + (ballDiameter/2) >= (height/2)){
    posY = (height/2) - (ballDiameter/2);
    onGround = true;
  } else {
    onGround = false;
  }
  for(int x = 1; x < 10; x++){
    noFill();
    ellipse(posX, posY, ballDiameter+ (x*20), ballDiameter + (x*20));
  }
}

void mousePressed(){
  if (onGround){
    jump();
  }
}

void jump(){
  velocityY = jumpSize;
}