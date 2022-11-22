Box [][] b;

boolean win = false;
int numTurns = 0;


void setup() {
  size(800, 800);
  Board();
}

void draw() {
  background(233);
  drawBoard();
  if(!win && numTurns<9){
    win = winRows() || winColumns() || winDiagonals();
  } else if(win){
    fill(255,100,100);
    rect(0, 0, width, height);
    fill(0);
    textAlign(CENTER);
    textSize(73);
    text("Winner:"+ (numTurns%2 + 1), width/2, height/2);
  } else{
    
  }
}

void mousePressed() {
  clickBoard();
}
