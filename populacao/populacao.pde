Table tabela;
int tL;
int[] year = { 2010, 2020, 2030 };

void setup() {
  size(800, 600);
  tabela = loadTable("dados.csv", "header");
  tL = tabela.getRowCount();
  println(tL);
}

void draw() {
 background(255);  
 noStroke();
 fill(211);
 rectMode(CENTER);
 rect(width/2, 25, width, 50);
 rect(width/2, height-25, width, 50);
 fill(0);
 textAlign(CENTER);
 textSize(32);
 text(year[0], width/2, 35); 
 textSize(24);
 text("Mulheres", width/4, 85);
 text("Homens", width*0.75, 85);
 textSize(18);
 text("Jovens", width/8, 110);
 text("Adultas", (width*0.75)/2, 110);
 text("Jovens", width*0.625, 110);
 text("Adultos", width*0.875, 110);
}
