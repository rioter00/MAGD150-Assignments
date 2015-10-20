int posX, posY, sizeX, sizeY;
color c; 

void setup(){
  size(800, 600);
  posX = 400;
  posY = 450;
  sizeX = 100;
  sizeY = 100;
}

void draw(){
  randomizePos();
  colorize();
  displayEllipse();
}

void randomizePos(){
  posX = round(random(width));
  posY = round(random(height));
}
void colorize(){
  c = round(random(255));
}

void displayEllipse(){
  fill(c);
  ellipse(posX, posY, sizeX, sizeY);
}