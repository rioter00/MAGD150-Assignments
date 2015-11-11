class CShip{
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3;
  
  // constructor
  CShip(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
  }
  
  void display(){
    fill(#283E2C);
    ellipse(centerX, centerY, r1, 80); //ship main body
    fill(#EAEAEA);
    ellipse(centerX , centerY + offset1, r2, r2); // cockpit
    fill(#430008);
    ellipse(centerX + offsetX1 , centerY + offset2, r3, r3); //engine1
    ellipse(centerX + offsetX2 , centerY + offset2, r3, r3); //engine1
  }
  
  void move() {
    if(keyPressed){
      if(key == 'w'){
        centerY = centerY - 5;
      } 
      if(key == 'a'){
        centerX = centerX - 5;
      }
      if(key == 'd'){
        centerX = centerX + 5;
      } 
      if(key == 's'){
        centerY = centerY + 5;
      }
    }
  }
}