Barras homens;
Barras jovens_homens;
Barras mulheres;
Barras jovens_mulheres;

Table tabela;
int tL;
String[] year = { "Press start", "2010", "2020", "2030" };
int joH;
int joM;
int H;
int M;
int currentPage;
int currentYear;

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
}

void draw() {
 background(255); 
 
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
 text(year[currentYear], width/2, 35); 
 textSize(24);
 text("Mulheres", width/4, 85);
 text("Homens", width*0.75, 85);
 textSize(18);
 text("Jovens", width/8, 110);
 text("Adultas", (width*0.75)/2, 110);
 text("Jovens", width*0.625, 110);
 text("Adultos", width*0.875, 110);
 //VARIÁVEIS
 currentYear = 0;
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
    } else {
      currentPage = 0;
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
  }
}
