color[] colors = {#FFFF00,#FF0000,#00FF00,
                #0000FF,#FF00FF,#00FFFF};
int[] x = {0,200,400,0,200,400};
int[] y = {0,0,0,200,200,200};
                
void setup(){
  size(600,400);
}

void draw(){
  // Add a loop from 0 to 6
  fill(colors[0]);
  rect(x[0],y[0],200,200);
}
