class Box {
  int row, column;
  int value;

  int x, y, w;

  Box(int r, int c, int x, int y, int w) {
    this.row = r;
    this.column = c;
    this.value = 0;
    this.x = x;
    this.y = y;
    this.w = w;
  }

  void setValue(int v) {
    this.value = v;
  }

  void display() {
    rect(x, y, w, w);
    if (value == 1) {
      line(x, y, x+w, y+w);
      line(x, y+w, x+w, y);
    } else if (value == 2) {
      ellipse(x+w/2, y+w/2, w/2, w/2);
    }
  }
  
  boolean inside(float x, float y){
  return (x>this.x && x<this.x+this.w 
          && y>this.y && y<this.y+this.w);
  }
  
}
