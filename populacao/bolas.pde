class Bolas {
  
  float maxX; 
  float minX; 
  float defX;
  color colour;
  float speedY;
  float ballY;
  
  Bolas(float tempmaxX, float tempminX, color tempColour) {
    maxX = tempmaxX; 
    minX = tempminX; 
    defX = random(tempminX,tempmaxX);
    colour = tempColour;
    speedY = random(1, 3);
    ballY = random(0,50);
  }
  
  void run() {
    display();
    move();
  }
  
  void display(){ 
    fill(colour); 
    ellipse(defX,ballY,50,50); 
  } 
  
  void move(){
    ballY = ballY + speedY;
    if(ballY >= height-75){
      speedY = 0;
    }
  }
  
}
