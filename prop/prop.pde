  int theta = 0;
  int diagonalSlide = 0;
  color newColor;
  void setup(){
    size(800, 600);
  }
  void draw(){
    if(keyPressed){
      newColor = round(random(255));
    }
    background(newColor);

    translate(diagonalSlide, diagonalSlide);
    theta += 10;
    rotate((theta));
    rect(0, 0, 200, 200);
    rect(-200,-200, 200, 200);
    diagonalSlide++;
  }