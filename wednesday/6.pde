void setup(){
  size(800,800);
  background(255);
  fill(0);
  
  for(int x = 0; x <= 800; x += 20){
    for(int y = 0; y <= 800; y += 20){
      ellipse(x,y,20,20);
    }
  }
}
