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
    if( type == "jovem_mulher"){
      fill(255, 204, 230);
    } else if( type == "mulher"){
      fill(255, 77, 166);
    } else if( type == "jovem_homem") {
      fill(179, 209, 255);
    } else {
      fill(0, 102, 255);
    }
    rect(x_pos-25, height - 50 - tall, 50, tall);
  }
  
}
