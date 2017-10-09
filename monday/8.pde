void setup(){
  size(800,800);
}

int x = 400;
int y = 400;

int xdir = 1;
int ydir = 1;

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,20,20);
  
  x = x + xdir;
  y = y + ydir;
  
  checkCollisions();
}

void checkCollisions(){
  if(x == 790){
    xdir = -1;
  }
  
  if(y == 790){
    ydir = -1;
  }
  
  if(x == 10){
    xdir = 1;
  }
  
  if(y == 10){
    ydir = 1;
  }
}
