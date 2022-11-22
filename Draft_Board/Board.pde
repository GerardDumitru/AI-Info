void Board(){
  b = new Box[3][3];

  for (int i=0; i<3; i++) {
    for (int j=0; j<3; j++) {
      b[i][j] = new Box(i, j, i*width/3, j*width/3, width/3);
    }
  }
}

void drawBoard(){
  for (int i=0; i<3; i++) {
    for (int j=0; j<3; j++) {
      b[i][j].display();
    }
  }
}

void clickBoard(){
  for (int i=0; i<3; i++) {
    for (int j=0; j<3; j++) {
      if(b[i][j].inside(mouseX, mouseY)&& b[i][j].value==0){
          b[i][j].setValue(numTurns%2 +1);
          numTurns++;
      }
    }
  }
}

boolean winRow(int r){
  return (b[r][0].value == b[r][1].value && 
          b[r][1].value == b[r][2].value && 
          b[r][0].value!=0);
}

boolean winRows(){
  for(int r = 0; r<b.length; r++){
    if(winRow(r)){
      return true;
    }
  }
  return false;
}

boolean winColumn(int c){
  return (b[0][c].value == b[1][c].value && 
     b[1][c].value == b[2][c].value && 
     b[0][c].value!=0);
}

boolean winColumns(){
  for(int c = 0; c<b.length; c++){
    if(winColumn(c)){
      return true;
    }
  }
  return false;
}

boolean winDiagonal1(){
  boolean b1 = true;
  for(int d=0; d<b.length-1; d++){
    b1 = b1 && (b[d][d].value == b[d+1][d+1].value);
  }
  return b1 &&(b[0][0].value!=0);
}

boolean winDiagonal2(){
  boolean b2 = true;
  for(int c=0, f=b.length-1; c<b.length-1; c++, f--){
    b2 = b2 && (b[f][c].value == b[f-1][c+1].value);
  }
  return b2 && (b[0][b.length-1].value!=0);
}

boolean winDiagonals(){
  return winDiagonal1() || winDiagonal2(); 
}
