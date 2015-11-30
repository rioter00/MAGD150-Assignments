  PVector ellipseCenter;
  int radius;
  float distance = 0;

void setup(){
  size(800, 600);
  ellipseCenter = new PVector(100, 100);
  radius = 80;
}

void draw(){
 background(255);
 ellipseMode(RADIUS);
 strokeWeight(0);
 
 ellipse(ellipseCenter.x, ellipseCenter.y, radius, radius);
  
 fill(255);
 text(ellipseCenter.x +" "+ ellipseCenter.y, ellipseCenter.x, ellipseCenter.y-5);   
 fill(0);
 text("radius: " + radius + " (" + (ellipseCenter.x + radius) + ", " + ellipseCenter.y + ")", ellipseCenter.x + radius, ellipseCenter.y);
 
 strokeWeight(10);
 fill(0,0,255);
 stroke(0,0,255);
 point(mouseX, mouseY);
 text("Mouse", mouseX, mouseY - 20);
 text(mouseX +", "+ mouseY, mouseX, mouseY- 5);

 float distance = dist( ellipseCenter.x, ellipseCenter.y, mouseX, mouseY );
 
 println(distance);
 
 if(distance < radius){
    fill(180);
 } else {
    fill(0);
 }
}







  