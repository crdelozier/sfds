void setup(){
  size(800,800); 
}

int x = 400;
int y = 400;
int xdir = 1;
int ydir = 1;
int speed = 5;
int score = 0;

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,20,20);
  rect(40,mouseY,20,50);
  x = x + speed * xdir;
  y = y + speed * ydir;
  check();
}

void check(){
  if(x > 790){
    xdir = -1;
  }
  
  if(y > 790){
    ydir = -1;
  }
  
  if(x < 10){
    // This is where we lose the game
    x = 400;
    y = 400;
    println("Score: " + score);
    score = 0;
  }
  
  if(y < 10){
    ydir = 1;
  }
  
  // Hitting the paddle
  if(x > 30 && x < 70){
    if(y > mouseY && y < mouseY + 50){
      xdir = 1;
      score++;
    }
  }
}
