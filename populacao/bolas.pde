class Bolas {
  
  float maxX; 
  float minX; 
  float defX;
  color colour;
  
  Bolas(float tempmaxX, float tempminX, color tempColour) {
    maxX = tempmaxX; 
    minX = tempminX; 
    defX = random(tempminX,tempmaxX);
    colour = tempColour;
  }
  
  void display(){ 
    fill(colour); 
    ellipse(defX,50,25,25); 
  } 
  
}
