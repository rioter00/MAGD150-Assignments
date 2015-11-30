  PVector UL;
  PVector LL;
  PVector UR;
  PVector LR;

void setup(){
  size(800, 600);
  UL = new PVector(10, 50);
  UR = new PVector(200, 50);
  LL = new PVector(10, 300);
  LR = new PVector(200, 300);
}

void draw(){
 background(255);
 fill(255,0,0);
 rectMode(CORNERS);
 strokeWeight(0);
 rect(UL.x,UL.y, LR.x, LR.y);

 text(UL.x +" "+ UL.y, UL.x, UL.y-5);   
 text(LR.x +" "+ LR.y, LR.x+5, LR.y);
 
 strokeWeight(10);
 point(mouseX, mouseY);
 fill(0,0,255);
 text("Mouse", mouseX, mouseY- 20);
 text(mouseX +", "+ mouseY, mouseX, mouseY- 5);
}







  