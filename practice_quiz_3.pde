int posX = 50;
int posY = 50;

void setup() {
  size(500, 500);
  background(0);
  fill(255, 0, 0);
  for(int x = 0; x < 10; x++){
    for(int y = 0; y < 10; y++){
      rect(posX, posY, 25, 25);
      posY += 50;
    }
    posX += 50;
    posY = 50;
  }
}

void draw(){
  
  
}
