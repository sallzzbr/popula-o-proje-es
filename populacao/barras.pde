class Barras {
  
  float x_pos;
  int tall;
  String type;
  
  Barras(float get_x, int get_tall, String get_type) {
    x_pos = get_x;
    tall = get_tall*10;
    type = get_type;
  }
  
  void run(){
    display();
  }
  
  void display(){
    rectMode(CORNER);
    fill(150);
    rect(x_pos, height - 50 - tall, 50, tall);
  }
  
}
