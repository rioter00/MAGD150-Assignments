int stateCount = 0;
int state = 0;
void setup() {
  size(800, 600);
}

void draw() {
  if (state == 0) {
    // put all the code you want for state 0 here.
    background(255, 0, 0);
    text("state0!", width/2, height/2);
  }
  if (state == 1) {
    // put all the code you want for state 0 here.
    background(0, 255, 0);
    text("state1!", width/2, height/2);
  }
  if (state == 2) {
    // put all the code you want for state 0 here.
    background(0, 0, 255);
    text("state2!", width/2, height/2);
  }
}

void mousePressed(){
  //everytime mouse is pressed, the states should increment 0 > 1 > 2 > 0 > 1 > 2, etc
  stateCount++;
  state = stateCount % 3;
}
  