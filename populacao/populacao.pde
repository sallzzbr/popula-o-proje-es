Barras homens;
Barras jovens_homens;
Barras mulheres;
Barras jovens_mulheres;

Table tabela;
int tL;
String[] year = { "2010", "2020", "2030" };
int joH;
int joM;
int H;
int M;
int currentPage;

boolean ready;

final static ArrayList<Bolas> bolitas = new ArrayList(); 

void setup() {
  size(800, 600);
  tabela = loadTable("dados.csv", "header");
  tL = tabela.getRowCount();
  println(tL);
  currentPage = 0;
  joH = tabela.getInt(currentPage, "jovens_homens");
  joM = tabela.getInt(currentPage, "jovens_mulheres");
  H = tabela.getInt(currentPage, "homens");
  M = tabela.getInt(currentPage, "mulheres");
  ready = false;
}

void draw() {
 background(255); 
 for (Bolas b: bolitas)   b.run();
 if(ready) { 
  for(int j = 0; j < bolitas.size(); j++){
   for(int i = 1; i < bolitas.size(); i++){
     if(j != i){
       bolitas.get(j).collide(bolitas.get(i));
     }
   }
  }
 }
 //ELEMENTOS INTERFACE
 noStroke();
 fill(211);
 rectMode(CENTER);
 rect(width/2, 25, width, 50);
 rect(width/2, height-25, width, 50);
 fill(0);
 //TEXTOS
 textAlign(CENTER);
 textSize(32);
 text(year[currentPage], width/2, 35); 
 textSize(24);
 text("Mulheres", width/4, 85);
 text("Homens", width*0.75, 85);
 textSize(18);
 text("Jovens", width/8, 110);
 text("Adultas", (width*0.75)/2, 110);
 text("Jovens", width*0.625, 110);
 text("Adultos", width*0.875, 110);
 //BOTÃO
 ellipseMode(CENTER);
 ellipse(width/2, height - 25, 45, 45);
 //Barras OBJECTS
 homens = new Barras(width*0.875, H, "homem");
 jovens_homens = new Barras(width*0.625, joH, "jovem_homem");
 mulheres = new Barras((width*0.75)/2, M, "mulher");
 jovens_mulheres = new Barras(width/8, joM, "jovem_mulher");
 homens.run();
 jovens_homens.run();
 mulheres.run();
 jovens_mulheres.run();
}

void mousePressed() {
  if(mouseX >= (width/2 - 22.5) && mouseX <= (width/2 + 22.5) && mouseY >= (height - 25 - 22.5) && mouseY <= (height - 25 + 22.5)){
    if (currentPage < 2){
      currentPage++;
      ready = true;
    } else {
      currentPage = 0;
      ready = false;
    }
     joH = tabela.getInt(currentPage, "jovens_homens");
     joM = tabela.getInt(currentPage, "jovens_mulheres");
     H = tabela.getInt(currentPage, "homens");
     M = tabela.getInt(currentPage, "mulheres");
    println(currentPage);
    println(joH);
    println(joM);
    println(H);
    println(M);
    if (bolitas.size() > 0){
      //for(int i = 0; i < bolitas.size(); i++){
        bolitas.clear();
      //}
    }
      for(int i = 0; i < joM; i++){
        bolitas.add( new Bolas(175, 25, color(255, 204, 230, 125)));
      }
      for(int i = 0; i < M; i++){
        bolitas.add( new Bolas(375, 225, color(255, 77, 166, 125)));
      }
      for(int i = 0; i < joH; i++){
        bolitas.add( new Bolas(575, 425, color(179, 209, 255, 125)));
      }
      for(int i = 0; i < H; i++){
        bolitas.add( new Bolas(775, 625, color(0, 102, 255, 125)));
      }
    println("foi", bolitas.size());
  }
}
