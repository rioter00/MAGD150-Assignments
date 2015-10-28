//create a boolean to track the state, so we can toggle scenes based on the state.
boolean mState = false;

void setup(){
  size(800, 600);
}

// This draw loop has a basic If statement that executes one set of code (background and other functions)
// There different sets of functions that execute based on the 
void draw(){
  if (mState == false){
  //< CODE FOR SCENE 1 >
  background(25);
  drawRandomEllipse();
  } else {
  //< CODE FOR SCENE 2 > 
  //background(200,0,0);
  dotsEverywhere();
  }
}

// I am using mouse presses to toggle SCENES
void mousePressed(){
  mState = !mState;
  println("changed!");
}

// I am using key presses trigger events
void keyPressed(){
  bang();
}

void bang(){
  background(200,0,0);
}

void drawRandomEllipse(){
  float a = random(0, width); 
  float b = random(0, width); 
  float c = random(0, width); 
  float d = random(0, width); 
  ellipse(a, b, c, d);
}

void dotsEverywhere(){
  float a = random(0, width);
  float b = random(0, height);
  stroke(0,255,0);
  point(a,b);
}  