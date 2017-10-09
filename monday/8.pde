void setup(){
  size(800,800);
}

int x = 400;
int y = 400;

int xdir = 1;
int ydir = 1;
int speed = 1;

int score = 0;

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,20,20);
  rect(20,mouseY,20,50);
  
  x = x + speed * xdir;
  y = y + speed * ydir;
  
  checkCollisions();
}

void checkCollisions(){
  if(x > 790){
    xdir = -1;
  }
  
  if(y > 790){
    ydir = -1;
  }
  
  if(x < 0){
    reset();
  }
  
  if(y < 10){
    ydir = 1;
  }
  
  if(x > 10 && x < 30){
     if(y > mouseY - 25 && y < mouseY + 25){
       if(xdir == -1){
         score++; 
         speed++;
       }
       xdir = 1;
     }
  }
}

void reset(){
  x = 400;
  y = 400;
  println("Score: " + score);
  score = 0;
  speed = 1;
}
