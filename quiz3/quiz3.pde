//an arraylist with an infinite size
//works differently to an array!
ArrayList<circle> circles = new ArrayList<circle>();

void setup(){
  size(500,500);
}

void draw(){
  background(255);
  
  //a for loop to get each circle from our arraylist and update it
  for (int i = 0; i < circles.size(); i++) {
    circle part = circles.get(i);
    part.update();
  }
  
}

void mouseDragged(){
  //everytime the mouse is dragged we add a new circle with the mouse position
  circles.add(new circle(mouseX, mouseY));
}

class circle{
  //i want each circle object to have these variables
  float xpos, ypos, speed, size, rotation;
  int counter = 0;
  //i randomise the colour here so that it stays consistent
  color c = color(random(255), random(255), random(255));
  
  //in the constructor you can decide what variables need to be passed
  //all i need is the mouse position, the values for the other stuff is randomised
  circle(float x, float y){
    //assign the mouse position variables to the x and y
    ypos = y;
    xpos = x;
    speed = random(5);
    size = random(10, 25);
  }
  
  void update(){
    //use the colour to fill the circle
    fill(c);
    circle(xpos, ypos, size);
    
    //if the frame counter is higher than 30 then make the circle drop
    if(counter > 30){
      ypos += speed;
    }
    
    //be careful, this counter only increases as long as update() is called!
    //if you want it to be true to the number of frames, you'll need to update it in the draw cycle
    //you can do this using a for loop that accesses every circle part
    //then access any of the variables using object.variable (eg. part.counter += 1)
    //but we don't need to do that here as i'm not doing anything that'll stop update() from being called
    counter++;
  }
}
