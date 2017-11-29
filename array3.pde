void setup(){
  size(750,750); 
  noLoop();
  redraw();
  pattern = new int[20];
  entered = new int[20];
  addPattern();
}

color red = color(100,0,0);
color brightred = color(255,0,0);
color blue = color(0,0,100);
color brightblue = color(0,0,255);
color green = color(0,100,0);
color brightgreen = color(0,255,0);
color yellow = color(100,100,0);
color brightyellow = color(255,255,0);

boolean showing = false;
int frame = 0;
int p = 0;

int score = 0;

color[] colors = {red,green,blue,yellow};
color[] dull = {red,green,blue,yellow};
color[] bright = {brightred,brightgreen,brightblue,brightyellow};
int[] x = {50,400,50,400};
int[] y = {50,50,400,400};
int[] pattern;
int[] entered;
int e = 0;
int f = 0;

void draw(){
  background(0);
    
  fill(255);
  textSize(36);
  text("Score: " + score,580,32);
  
  if(showing){
    int d = pattern[p];
    colors[d] = bright[d];
    frame++;
    if(frame % 60 == 0){
      colors[d] = dull[d];
      p++;
      if(p > score){
        showing = false;
        p = 0;
        frame = 0;
        noLoop();
      }
    }
  }
  
  // Add a loop from 0 to 4 that includes the next 2 lines
  fill(colors[0]);
  rect(x[0],y[0],300,300);
}

void mousePressed(){
  // Add a loop from 0 to 4 that includes the next 9 lines
  if(mouseX >= x[0] && mouseX <= x[0] + 300){
    if(mouseY >= y[0] && mouseY <= y[0] + 300){
       colors[0] = bright[0];
       entered[f++] = 0;
       if(f == e){
         checkWin(); 
       }
    }
  }

  redraw();
}

void mouseReleased(){
  // Add a loop from 0 to 4 that includes the next 5 lines
  if(mouseX >= x[0] && mouseX <= x[0] + 300){
    if(mouseY >= y[0] && mouseY <= y[0] + 300){
       colors[0] = dull[0];   
    }
  }
  redraw();
}

void checkWin(){
  f = 0;
  
  // Add a loop from 0 to e that includes the next 6 lines
  if(pattern[0] != entered[0]){
    println("INCORRECT!");
    e--;
    score--;
    return;
  }
  
  score++;
  addPattern();
  
  if(score == 20){
    println("YOU WIN!");
    exit();
  }
}

void addPattern(){
  pattern[e] = (int)random(0,4);
  e++;
}

void keyPressed(){
  if(keyCode == ENTER){
     showing = true;
     loop();
  }
}
