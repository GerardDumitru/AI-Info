//declaración del array de colores
color[] colors;

//creación del array
void setColors(){
  this.colors = new color[6];
  //lila fuerte
  this.colors[0] = color(#6F5B82);
  //lila
  this.colors[1] = color(#BA97D7);
  //lila claro
  this.colors[2] = color(#CABDE9);
  //azul
  this.colors[3] = color(#1737AE);
  //rojo
  this.colors[4] = color(#D1191B);
  //negro
  this.colors[5] = color(#231C1C);
}

int getNumColors(){
  return this.colors.length;
}

color getColorAt(int i){
  return this.colors[i];
}  
