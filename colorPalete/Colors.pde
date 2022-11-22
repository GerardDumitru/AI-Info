color[] colors;

void setColors(){
  this.colors = new color[6];
  this.colors[0] = color(#6F5B82);
  this.colors[1] = color(#BA97D7);
  this.colors[2] = color(#CABDE9);
  this.colors[3] = color(#1737AE);
  this.colors[4] = color(#D1191B);
  this.colors[5] = color(#231C1C);
}

int getNumColors(){
  return this.colors.length;
}

color getColorAt(int i){
  return this.colors[i];
}

void displayColors(float x, float y, float w){
  pushStyle();
  fill(0);
  textAlign(LEFT); 
  textSize(36);
  text("Colors:", x, y - 10);
  float wc = w / getNumColors();
  for(int i=0; i<getNumColors(); i++){
    fill(getColorAt(i)); 
    stroke(0); 
    strokeWeight(3);
    rect(x + i*wc, y, wc, wc);
  }
  popStyle();
}
