int posX = 50;
int posY = 50;

void setup() {
  size(500, 500);
  background(0);
  fill(255, 0, 0);

//outside loop changes the x value spacing of the squares
  for(int x = 0; x < 10; x++){
//inside loop prints 10 squares moving downwards
    for(int y = 0; y < 10; y++){
      rect(posX, posY, 25, 25);
      posY += 50;
    }

//when the first lot of 10 squares finishes, the Y loop ends
//We move the Y of the squares back to the top and change the X value
//then because the X loop goes again in this new position, the y loop executes another 10 squares going downwards
    posX += 50;
    posY = 50;
  }
}

void draw(){
  
  
}
