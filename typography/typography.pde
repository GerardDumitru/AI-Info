void setup(){
  size(800, 800);
  
  setFonts();
  
}


void draw(){
    background(255);
  
  fill(0);
  textFont(getFirstFont());
  text("Title", 50, 200);
  
  fill(50);
  textFont(getSecondFont());
  text("Text", 50, 250);
  
  fill(55, 0, 0);
  textFont(getThirdFont());
  text("Button", 50, 300);
  
  
  displayFonts(100, 400, 50);
  
}
