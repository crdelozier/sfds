void setup(){
  size(800,800);
}

int x = 50;
int y = 0;

int xdir = 1;
int ydir = 1;

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,50,50);

  x = x + xdir;
  y = y + ydir;
}

void mouseClicked(){
  x = mouseX;
  y = mouseY;
}