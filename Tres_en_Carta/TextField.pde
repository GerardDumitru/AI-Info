//clase campo de texto
class TextField {
  
  //propiedades del campo de texto
  int x, y, h, w;
  
  // colores
  color bgColor = color(getColorAt(5));
  color selectedColor = color(255);
  color borderColor = color(getColorAt(5));
  int borderWeight = 1;
  
  //texto del campo
  String text = "";
  int textLength = 0;
  int textSize = 20;

  boolean selected = false;
   
  // Constructor
  TextField(int x, int y, int w, int h) {
      this.x = x; this.y = y; this.w = w; this.h = h;
   }
  
  // dibuja el campo de texto
  void display() {
    pushMatrix();
    
    textAlign(LEFT);
    if (selected) {
      fill(selectedColor);
    } else {
      fill(bgColor);
    }

    strokeWeight(borderWeight);
    stroke(borderColor);
    rect(x, y, w, h, 5);

    fill(0);
    textSize(textSize);
    text(text, x + 2, y + 17);
    println(text);
    popMatrix();
  }
   
   // añadir, quitar el texto que se teclea
   void keypressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
            
           boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
           boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
           boolean isKeyNumber = (key >= '0' && key <= '9');
      
           if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
               addText(key);
           }
         }
      }
   }
   
   // añadir la letra c al final del texto
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   // quitar la última letra del texto
   void removeText() {
      if (textLength - 1 >= 0) {
         text = text.substring(0, textLength - 1);
         textLength--;
      }
   }

   // indicador de si el ratón esta sobre el campo de texto
   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }
   
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
         println("pulsado");
      } 
      else{
         selected = false;
         println("no pulsado");
      }
   }
}
