class BoxDude{
  int centerX, centerY, offset1, offset2;

  BoxDude(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = 15;
    offset2 = 15;
  }

  BoxDude(int _centerX, int _centerY, int _offset1, int _offset2){
    centerX = _centerX;
    centerY = _centerY;
    offset1 = _offset1;
    offset2 = _offset2;
  }

  void display(){
    rectMode(CENTER);
    fill(255, 0,0);
    rect(centerX, centerY, 100, 30);
    fill(255);
    rect(centerX+offset1, centerY+offset2, 20, 20);
    rect(centerX-offset2, centerY-offset2, 20, 20);
  }

  void move(){
    //int stepsize = 5;
    centerX = round(random(-5,5)) + centerX;
    centerY = round(random(-5, 5)) + centerY;
  }
}


BoxDude myBoxDude;
BoxDude specialBoxDude;


void setup{
  size(800,600)
  myBoxDude = new BoxDude();
  specialBoxDude = new BoxDude(100, 100, 10, 30);
}

void draw(){
  //myBoxDude.move();
  myBoxDude.display();
  specialBoxDude.display();
}
