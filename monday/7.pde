void setup(){
  size(800,800); 
}

int x = 300;
int y = 400;
int xdir = 1;
int ydir = 1;
int speed = 1;

void draw(){
  background(0);
  fill(200,0,0);
  ellipse(x,y,20,20);
  x = x + speed * xdir;
  y = y + speed * ydir;
  
  if(x > 790){
    xdir = -1;
    speed++;
  }
  
  if(y > 790){
    ydir = -1;
    speed++;
  }
  
  if(x < 10){
    xdir = 1;
    speed++;
  }
  
  if(y < 10){
    ydir = 1;
    speed++;
  }
}
