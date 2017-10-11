// This creates the window
void setup(){
  size(800,800); 
}

// x and y are the ball's position
int x = 400;
int y = 400;

// xdir and ydir are the ball's direction
int xdir = 1;
int ydir = 1;

// This is the ball's speed
int speed = 1;

// This is the game score
int score = 0;

void draw(){
  // These calls set the colors
  background(255);
  fill(0);
  
  // This draws the ball
  ellipse(x,y,20,20);
  
  // This draws the paddle
  rect(40,mouseY,20,50);
  
  moveBall();
  checkCollisions();
}

// This function moves the ball on the screen
void moveBall(){
  x = x + xdir * speed;
  y = y + ydir * speed;
}

void checkCollisions(){
  // If the ball goes out of the screen, the game is over
  if(x < 0){
    reset();
  }
  
  // This makes the ball bounce off of the right side
  // of the window
  if(x > 790){
    xdir = -1;
  }
  
  // This makes the ball bounce off of the top of the window
  if(y < 10){
    ydir = 1; 
  }
  
  // This makes the ball bounce off of the bottom of the window
  if(y > 790){
    ydir = -1;
  }
  
  // This code does collision detection on the paddle
  if(x > 30 && x < 70){
    if(y > mouseY && y < mouseY + 50){
      if(xdir == -1){
        speed++;
        score++;
      }
      xdir = 1;
    }
  }
}

// This function gets called when the game is over
// We should reset the game state here
void reset(){
  println("Score: " + score);
  speed = 1;
  score = 0;
  x = 400;
  y = 400;
}
