/*
THIS SKETCH DEMOS SIMULTANEOUS KEYPRESS
BY SEPARATING THE DETECTION AND RESULTANT EXECUTION OF CODE
MOVEMENENT KEYS USED: W,A,S,D
*/


class Movement{
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3;
  boolean keys[];    // In this array, the index corresponds with W,S,A,D.
  
  int xVelocity, yVelocity;
  
  // constructor
  Movement(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
    keys = new boolean [4];
  }
  
  void display(){  // creates a spaceship. 
    fill(#283E2C);
    ellipse(centerX, centerY, r1, 80); //ship main body
    fill(#EAEAEA);
    ellipse(centerX , centerY + offset1, r2, r2); // cockpit
    fill(#430008);
    ellipse(centerX + offsetX1 , centerY + offset2, r3, r3); //engine1
    ellipse(centerX + offsetX2 , centerY + offset2, r3, r3); //engine1
  }
  
  void update(){
    if (keys[0]){
      yVelocity = -5;
    }
    if(keys[1]){
      yVelocity = 5;
    }
    if(keys[2]){
      xVelocity = -5;
    }
    if(keys[3]){
      xVelocity = 5;
    }
    if(!keys[2] && !keys[3]){ // if both Left and Right are released, horizontal velocity should be zero.
      xVelocity = 0;
      //println("no left or right");
    }
    if(!keys[0] && !keys[1]){ // if both Up and Down are released, vertical velocity should be zero.
      yVelocity = 0;
      //println("no left or right");
    }
    centerX += xVelocity;
    centerY += yVelocity;
  }
  
  void keyPressed(){
    if(key == 'w'){
      keys[0] = true;
    } 
    if(key == 's'){
      keys[1] = true;
    }
    if(key == 'a'){
      keys[2] = true;
    }
    if(key == 'd'){
      keys[3] = true;
    } 
  }
  
  void keyReleased(){ // the 
    println("Keyreleased " + key);
    if(key == 'w'){
      keys[0] = false;
    } 
    if(key == 's'){
      keys[1] = false;
    }
    if(key == 'a'){
      keys[2] = false;
    }
    if(key == 'd'){
      keys[3] = false;
    } 
  }   
}

Movement newMovement;

void setup(){
  size(800,600);
  newMovement = new Movement();
}

void draw(){
  background(255);
  newMovement.update();
  newMovement.display();
}

void keyPressed(){
  newMovement.keyPressed(); // the global keyPressed function calls the Movement class keyPressed method.  
}

void keyReleased(){
  newMovement.keyReleased(); // the global keyReleased function calls the Movement class keyReleased method.
}