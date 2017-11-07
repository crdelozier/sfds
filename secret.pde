String[] words = 
  {"Super","Drink","Abracadabra","To",
   "What","Because","Secret","Be","Your",
   "Time","Stuff","FBI","Sure","Words",
   "Church","Floor","Everyone","Love",
   "Yes","No","Map","Ovaltine","Pepsi",
   "Coffee","Water","Food","Sun"};

void setup(){
  size(400,400);
  background(255);
  fill(0);
  textSize(48);
  
  int x = 0;
  int y = 1;
  int z = 2;
  
  // Make this if statement false
  if(x < y){
    text(words[0],20,180);
  }
  
  // Leave this if statement true
  if(x == y-1){
    text(words[1],20,240); //
  }
  
  // Make this if statement false
  if(x != z){
    text(words[2],20,60);
  }
  
  // Leave this if statement true
  if(z == x + 2){
    text(words[3],20,180); //
  }
  
  // Make this if statement false
  if(x == 0){
    text(words[4],20,360);
  }
  
  // Make this if statement false
  if(y == x + 1){
    text(words[5],20,300);
  }
  
  // Add a false if statement around the next line of code
  text(words[6],20,120);
  
  // Leave this if statement true
  if(z == 2){
    text(words[7],20,60);
    text(words[8],20,300);
  }
  
  // Add a false if statement around the next 3 lines of code
  text(words[9],20,180);
  text(words[10],20,360);
  text(words[11],20,120);
  
  // Leave this if statement true
  if(y == 1){
    text(words[12],20,120); //
  }
  
  // Add a false if statement that includes the next
  // 8 lines of code (words[13-20])
  text(words[13],20,60);
  text(words[14],20,120);
  text(words[15],20,180);
  text(words[16],20,240);
  text(words[17],20,300);
  text(words[18],20,360);
  text(words[19],20,200);
  text(words[20],20,150);
  
  // Leave this if statment true
  if(true){
    text(words[21],20,360);
  }
  
  extra();
}

void extra(){
  // Add a false if statement that includes
  // all of the calls to text(...) in this function
  // Note: You cannot use x,y, and z here because
  // they are local to the other function
  text(words[22],20,220);
  text(words[23],20,330);
  text(words[24],20,60);
  text(words[25],20,80);
  text(words[26],20,140);
}
