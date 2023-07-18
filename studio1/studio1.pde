//variable initialisation
int x = 50; 
int y = 50;
float floating = 0.0;
String word = "Hello World!";
boolean check = true;

//setup function, runs once
void setup() {
  size(500, 500);
  background(0);
}

//red circle printed at 50, 50
void draw(){
  
  fill(255, 0, 0);
  noStroke();
  circle(x, y, 25);

//run the circle across the screen then move it down
  if(x >= 450){
    x = 50;
    y += 100;
  }else{
    x += 5;
  }

}

//keypressed function
void keyPressed(){
  print("A key is being pressed. \n");
  if(check == true){
    print("circle is being moved");
    print(x);
    x += 5;
    print("the value of x " + x + "\n");
  }
  else{
    x-=5;
  }
}
