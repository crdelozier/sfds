void setup(){
  size(800,800); 
}

int x = 400;
int y = 400;

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,20,20);
  ellipse(x2,y2,20,20);
  x++;
  y++;
}
