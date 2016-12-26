int counter = 0;

void setup() {
  size(500, 500);
  noStroke();
  rectMode(CENTER);
}

void draw(){
  // sets background to blue
  //background(0, 0, 255); 
  // sets fill to yellow 
  //fill(255, 255, 0);
  //draws a square 
  //rect(200, 200, 100, 100);
  // sets fill to green
  //fill(0, 255, 0);
  //rect(width/2, height/2, 50, 50);
  
  //sets background to black
  background(0, 0, 0);
  println("mouseX:" + mouseX);
  println("mouseX:" + mouseY);
  
  //sets background to white
    //draw square at mouse position 
    rect(mouseX, mouseY, 50, 50);
    
    if (mouseX < width/2){
      fill(255, 255, 255);
      }else{
      fill(255, 0, 0);
      }

}