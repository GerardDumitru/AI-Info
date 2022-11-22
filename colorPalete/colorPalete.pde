Cercle c1, c2, c3, c4, c5, c6;

void setup(){
  size(800,800);
  
  //no entiendo
  setColors();
    
  c1 = new Cercle(width/4, height/2, sizeCercle);
  c1.setColor(getColorAt(0));
  
  c2 = new Cercle(width/2, height/2, sizeCercle);
  c2.setColor(getColorAt(1));
  
  c3 = new Cercle(3*width/4, height/2, sizeCercle);
  c3.setColor(getColorAt(2));
  
  c4 = new Cercle(width/4, 3*height/4, sizeCercle);
  c4.setColor(getColorAt(3));
  
  c5 = new Cercle(width/2, 3*height/4, sizeCercle);
  c5.setColor(getColorAt(4));
  
  c6 = new Cercle(3*width/4, 3*height/4, sizeCercle);
  c6.setColor(getColorAt(5));
}

void draw(){
  background(255);
  
  c1.display();
  c2.display();
  c3.display();
  c4.display();
  c5.display();
  c6.display();

  displayColors(100, 100, width - 200);
}
