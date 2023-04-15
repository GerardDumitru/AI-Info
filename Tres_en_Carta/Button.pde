//clase botón
class Button {
  
 // propiedades del botón:
 float x, y, w, h;  
 
 // color del contorno, borde
 color fillColor, strokeColor;
 color fillColorOver, fillColorDisabled;
 
 String textBoto;  // texto
 boolean enabled;  // abilitado o desabilitado
 
 // Constructor
 Button(String text, float x, float y, float w, float h){
   this.textBoto = text;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.enabled = true;
   fillColor = color(255, 255, 255);
   fillColorOver = color(255, 255, 255);
   fillColorDisabled = color(255);
   strokeColor = color(0);
 }
 
 // Setters
 
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 void setFillColor(color c){
   this.fillColor = c;
 }
 
 void setFillColorOver(color c){
   this.fillColorOver = c;
 }
 
 void setFillColorDisabled(color c){
   this.fillColorDisabled = c;
 }
 
 void setStrokeColor(color c){
   this.strokeColor = c;
 }
 
 
 // dibujar el botón
 void display(){
   pushStyle();
   if(!enabled){
     fill(fillColorDisabled);  // color desabilitado
   }
   else if(mouseOverButton()){
     fill(fillColorOver);      // color cuando el ratón esta encima
   }
   else{
     fill(fillColor);          // color activo pero el ratón esta fuera
   }
   stroke(strokeColor); strokeWeight(2);        // color y tamaño del contorno
   rect(this.x, this.y, this.w, this.h);    // rectángulo del botón
   
   // texto (color, alienación y medida)
   fill(0); textAlign(CENTER); textSize(20);
   text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
   popStyle();
 }
 
 // indicar si el cursior esta sobre el botón
 boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + this.w) && 
          (mouseY>= this.y) && 
          (mouseY<= this.y + this.h); 
 }
  
}
