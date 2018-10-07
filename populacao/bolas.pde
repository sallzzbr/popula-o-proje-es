class Bolas {
  
  float maxX; 
  float minX; 
  float defX;
  color colour;
  float speedY;
  float speedX;
  float ballY;
  float gravity;
  String type;
  
  Bolas(float tempmaxX, float tempminX, color tempColour, String tempType) {
    maxX = tempmaxX; 
    minX = tempminX; 
    defX = random(tempminX,tempmaxX);
    colour = tempColour;
    speedY = random(1, 2);;
    speedX = random(-2, 2);
    ballY = random(40,50);
    gravity = 0.1;
    type = tempType;
  }
  
  void run() {
    display();
    move();
  }
  
  void display(){ 
    fill(colour); 
    ellipseMode(RADIUS);
    ellipse(defX,ballY,25,25); 
  } 
  
  void move(){
    ballY = ballY + speedY;
    speedY = speedY + gravity;
    defX = defX + speedX;
    if (type == "jom") {
      if(ballY >= height-450){
        speedY = speedY * -0.75;
        ballY = height-450;
      } 
    } else if (type == "m") {
      if(ballY >= height-325){
        speedY = speedY * -0.75;
        ballY = height-325;
      } 
    } else if (type == "joh") {
      if(ballY >= height-200){
        speedY = speedY * -0.75;
        ballY = height-200;
      } 
    } else {
      if(ballY >= height-75){
        speedY = speedY * -0.75;
        ballY = height-75;
      }
    }
    if(ballY <= 35) {
      speedY = speedY * -1;
    }
    if (defX <= 25 || defX >= width - 25) {
      speedX = speedX * -1;
    }
  }
  
  //void collide(Bolas other){
  //  if (dist(defX, ballY, other.defX, other.ballY) < 25){
  //    //println("ui");
  //    //ballY = ballY + random(-5,5);
  //    //other.ballY = other.ballY + random(-5,5);
  //    //defX = defX - 5;
  //    //other.defX = other.defX + 5;
  //    //other.speedX = other.speedX * -1;
  //    if (ballY >= height-60){
  //      speedX = speedX * -0.95;
  //      speedY = speedY * -0.95;
  //    } else {
  //      speedX = speedX * -1;
  //      //speedY = speedY * -1;
  //    }
  //    //colour = color(0);
  //  }
  //}
  
}
