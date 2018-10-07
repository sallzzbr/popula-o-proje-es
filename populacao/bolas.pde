class Bolas {
  
  float maxX; 
  float minX; 
  float defX;
  color colour;
  float speedY;
  float speedX;
  float ballY;
  float gravity;
  
  Bolas(float tempmaxX, float tempminX, color tempColour) {
    maxX = tempmaxX; 
    minX = tempminX; 
    defX = random(tempminX,tempmaxX);
    colour = tempColour;
    speedY = random(1, 2);;
    speedX = random(-2, 2);
    ballY = random(40,50);
    gravity = 0.1;
  }
  
  void run() {
    display();
    move();
  }
  
  void display(){ 
    fill(colour); 
    ellipseMode(RADIUS);
    ellipse(defX,ballY,10,10); 
  } 
  
  void move(){
    ballY = ballY + speedY;
    speedY = speedY + gravity;
    defX = defX + speedX;
    if(ballY >= height-50){
      speedY = speedY * -0.95;
      ballY = height-50;
    }
    if(ballY <= 35) {
      speedY = speedY * -1;
    }
    if (defX <= 25 || defX >= width - 25) {
      speedX = speedX * -1;
    }
  }
  
  void collide(Bolas other){
    if (dist(defX, ballY, other.defX, other.ballY) < 25){
      //println("ui");
      //ballY = ballY + random(-5,5);
      //other.ballY = other.ballY + random(-5,5);
      //defX = defX - 5;
      //other.defX = other.defX + 5;
      //other.speedX = other.speedX * -1;
      if (ballY >= height-50){
        speedX = speedX * -0.95;
        speedY = speedY * -0.95;
      } else {
        speedX = speedX * -1;
        //speedY = speedY * -1;
      }
      //colour = color(0);
    }
  }
  
}
