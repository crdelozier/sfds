void setup(){
  size(800,800);
}

int x = 400;
int y = 400;

int xdir = 1;
int ydir = 1;

int speed = 1;

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,20,20);
  
  x = x + (speed * xdir);
  y = y + (speed * ydir);
  
  checkCollisions();
}

void checkCollisions(){
  if(x == 790){
    xdir = -1; 
  }
  
  if(y == 790){
    ydir = -1; 
  }
}
