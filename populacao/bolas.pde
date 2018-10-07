class Bolas {
  
  float maxX; 
  float minX; 
  float defX;
  color colour;
  float speedY;
  float speedX;
  float ballY;
  
  Bolas(float tempmaxX, float tempminX, color tempColour) {
    maxX = tempmaxX; 
    minX = tempminX; 
    defX = random(tempminX,tempmaxX);
    colour = tempColour;
    speedY = random(1, 2);;
    speedX = random(-2, 2);
    ballY = random(40,50);
  }
  
  void run() {
    display();
    move();
  }
  
  void display(){ 
    fill(colour); 
    ellipse(defX,ballY,5,5); 
  } 
  
  void move(){
    ballY = ballY + speedY;
    defX = defX + speedX;
    if(ballY >= height-75 || ballY <= 35){
      speedY = speedY * -1;
    }
    if (defX <= 25 || defX >= width - 25) {
      speedX = speedX * -1;
    }
  }
  
  void collide(Bolas other){
    if (dist(defX, ballY, other.defX, other.ballY) < 5){
      println("ui");
      //ballY = ballY + random(-5,5);
      //other.ballY = other.ballY + random(-5,5);
      //defX = defX + random(-5,5);
      //other.defX = other.defX + random(-5,5);
      speedX = speedX * -1;
    }
  }
  
}
