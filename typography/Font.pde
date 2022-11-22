PFont[] fonts;
  
void setFonts(){
    this.fonts = new PFont[3];
    this.fonts[0] = createFont("VeraSeBd.ttf", sizeTitle);
    this.fonts[1] = createFont("Sono-Light.ttf", sizeText);
    this.fonts[2] = createFont("MAKISUPA.TTF", sizeButton);
}
  
  int getNumFonts(){
    return this.fonts.length;
  }
  
  PFont getFirstFont(){
    return  this.fonts[0];
  }
  
  PFont getSecondFont(){
    return  this.fonts[1];
  }
  
  PFont getThirdFont(){
    return  this.fonts[2];
  }
  
  PFont getFontAt(int i){
    return this.fonts[i];
  }
  
  
  void displayFonts(float x, float y, float h){
    pushStyle();     
      for(int i=0; i<getNumFonts(); i++){
        fill(0); stroke(0); strokeWeight(3);
        textFont(getFontAt(i));
        text("Typography "+i, x, y + i*h);
      }
    popStyle();
  }
