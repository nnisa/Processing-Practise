// Declare variable "a" of type PImage
PImage img; 
PImage ocean; 
PImage tree; 
PImage sittingOcean; 

boolean selectedClouds = true;
boolean selectedSun = false;

void setup() {
  size(900, 500);
  noStroke();
  img = loadImage("image.png");
  ocean = loadImage("ocean.png");
  tree = loadImage("tree.png");
  sittingOcean= loadImage("sitting on ocean.png");

}

void draw(){
  if (selectedClouds) {
   //drawCloud(200, 80);
   // drawCloud(450, 180);
   drawDay(17, 34, 53);//night time
   drawSun(255, 255, 255);
   image(ocean, 0, 350, (img.width+img.width*2), (img.height+img.height*2));
   image(sittingOcean, 0, 0, img.width*2, img.height*2);

  }
}


void drawDay(int x, int y, int z){
    background(x, y, z);
}

void drawCloud(float x, float y) {  
  fill(225, 225, 225);
  rect(x-100, y+20, 200, 25);
  ellipse(x-100, y+20, 50, 50);
  ellipse(x-50, y+10, 70, 70);
  ellipse(x, y, 90, 90);
  ellipse(x+60, y+10, 70, 70);
  ellipse(x+100, y+20, 50, 50);
}

void drawSun(int x, int y, int z) {
  fill(x, y, z);
  ellipse(700, 100, 150, 150);
}

void drawMountain(){
  //drawing mountains 
  fill(165, 160, 123);
  triangle(100, 460, 200, 250, 570, 460);
  triangle(300, 450, 500, 270, 800, 450); 
  fill(188, 157, 100);
  ////////////////////
  fill(188, 157, 95);
  triangle(-10, 460, 180, 250, 400, 460);
  triangle(300, 450, 500, 270, 700, 450); 
  fill(188, 157, 100);
  triangle(600, 450, 800, 300, 1000, 400);
  //////////////////
  fill(57, 83, 86);
  triangle(-10, 470, 200, 250, 400, 470);
  triangle(300, 470, 500, 300, 700, 470);
  fill(55, 77, 79);
  triangle(600, 470, 800, 300, 1000, 470);
}

void drawImage(){
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 250, img.width, img.height);
  fill(0, 0, 0);
  rect(500, 459, 500, 280);
}