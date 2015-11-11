int centerX, centerY, offset1, offset2;

void setup(){
  background(255);
  size(800,600);
}

void draw(){
 updateBoxDude();
 drawBoxDude();
}

void updateBoxDude(){
  centerX = round(random(0, width));
  centerY = round(random(0, height));
  offset1 = 15;
  offset2 = 15;
}

void drawBoxDude(){
  rectMode(CENTER);
  fill(255, 0,0);
  rect(centerX, centerY, 100, 30);
  fill(255);
  rect(centerX+offset1, centerY+offset2, 20, 20);
  rect(centerX-offset2, centerY-offset2, 20, 20);
}

// whatever
