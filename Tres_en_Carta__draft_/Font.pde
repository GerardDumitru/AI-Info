//declaración del array de fuentes
PFont[] fonts;

//creación de las fuentes
void setFonts(){
    this.fonts = new PFont[3];
    //fuente para títulos
    this.fonts[0] = createFont("VeraSeBd.ttf", 30);
    //fuente para textos
    this.fonts[1] = createFont("Sono-Light.ttf", 34);
    //fuente para botones
    this.fonts[2] = createFont("MAKISUPA.TTF", 104);
}
  
//obtener el número de fuentes
int getNumFonts(){
  return this.fonts.length;
}
 
//obtener primera fuente
PFont getFirstFont(){
  return  this.fonts[0];
}

//obtener segunda fuente
PFont getSecondFont(){
  return  this.fonts[1];
}
 
//obtener tercera fuente
PFont getThirdFont(){
  return  this.fonts[2];
}
 
//obtener fuente dando un parámetro
PFont getFontAt(int i){
  return this.fonts[i];
}
  
  
  
