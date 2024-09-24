int x, y;
int px, py;
int step = 1;
int stepSize = 1;
int numSteps = 1;
int state = 0;
int turnCounter = 0;
int totalSteps;

boolean checkPrime(int n){
  
  if(n < 2)
    return false;
  for(int i = 2;i <= sqrt(n) ; i++){
    if(n % i == 0)
      return false;
  }
  return true;
}

void setup() {
  size(900, 900);
  x = width/2;
  y = height/2;
  px = x;
  py = y;
  background(0);
  
  int cols = width/stepSize;
  int rows = height/stepSize;
  
  totalSteps = rows * cols;



while (step<=totalSteps) {
  //textSize(20);
  //textAlign(CENTER, CENTER)
  //text(step, x, y);
  fill(255);
  stroke(255);
  if (checkPrime(step)){
    circle(x,y,stepSize * 0.5);
  }
  //line(x,y,px,py);
  px = x;
  py = y;
  
  
  switch (state){
    case 0:
      x += stepSize;
      break;
    case 1:
      y -= stepSize;
      break;
    case 2:
      x -= stepSize;
      break;
    case 3:
      y += stepSize;
      break;
      
  }
  
  if(step % numSteps == 0){
    state = (state + 1) % 4;
    turnCounter++;
  }
  
  if(turnCounter == 2){
    numSteps++;
    turnCounter = 0;
  }
  step++;
  
}
  /*if(step>totalSteps){
    noLoop();
  }*/
save("ulamSpiral.png");
  
}
