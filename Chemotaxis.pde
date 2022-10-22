Firework[] bob = new Firework[500];
int n = 1;
void setup() {
  size(800, 800);
  frameRate(20);
  for(int i = 0; i < n; i++) {
  bob[i] = new Firework();
  }
}

void draw() {
  background(2);
  for(int i = 0; i < n; i++) {
    bob[i].show();
    bob[i].pop();
  }
}

class Firework {
  //member variables
  int myX, myY, myColor, colours;
  
  Firework() {
    myColor = color((int)(Math.random()*220), (int)(Math.random()*245), 260);
    myX = mouseX;
    myY = mouseY;
}

void pop() {
  myX = myX + (int)(Math.random()*200)-100;
  myY = myY + (int)(Math.random()*300)-120;
}

void show() {
  fill(myColor);
  stroke(myColor);
  ellipse(myX, myY, 10, 10);
  triangle(myX+100, myY-100, myX+50, myY-50, myX+10, myY-10);
}
}

void mousePressed() {
  n++;
   for(int i = 0; i < n; i++) {
  bob[i] = new Firework();
  }
  redraw();
}

