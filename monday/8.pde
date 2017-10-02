void setup(){
  size(640,640);
}

int x = 300;
int y = 300;

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
  if(x == 630){
    xdir = -1;
  }
  
  if(y == 630){
    ydir = -1;
  }
  
  if(x == 10){
    xdir = 1;
  }
  
  if(y == 10){
    ydir = 1;
  }
}
