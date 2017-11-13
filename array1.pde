void setup(){
  size(800,800);
  
  // Add a loop from 0 to N for the next 4 lines of code
  x[0] = (int)random(0,800);
  y[0] = (int)random(0,800);
  xdir[0] = (int)random(1,3) - 2;
  ydir[0] = (int)random(1,3) - 2;
}

int N = 10;

// x and y are the ball's position
int[] x = new int[N];
int[] y = new int[N];

// xdir and ydir are the ball's direction
int[] xdir = new int[N];
int[] ydir = new int[N];

// This is the ball's speed
int speed = 1;

void draw(){
  background(255);
  fill(0);
  
  // Add a loop from 0 to N for the next line
  ellipse(x[0],y[0],20,20);
  
  moveBall();
  checkCollisions();
}

// This function moves the ball on the screen
void moveBall(){
  // Add a loop from 0 to N for the next 2 lines
  x[0] = x[0] + xdir[0] * speed;
  y[0] = y[0] + ydir[0] * speed;
}

void checkCollisions(){
  // Add a loop from 0 to N for all of the code in this function
  if(x[0] < 10){
    xdir[0] = 1;
  }
  
  if(x[0] > 790){
    xdir[0] = -1;
  }
  
  if(y[0] < 10){
    ydir[0] = 1; 
  }
  
  if(y[0] > 790){
    ydir[0] = -1;
  }
}
