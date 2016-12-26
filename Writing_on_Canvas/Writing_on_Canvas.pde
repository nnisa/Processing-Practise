String lastInput = new String();
String currentInput = new String();
PFont myFont; 
void setup()
{
size(800, 600);
smooth();
  myFont = createFont("FFScala", 32);
textFont(myFont);
textAlign(CENTER);
}

void draw()
{
background(255, 255, 255);
fill(0);
text(lastInput, width/2, height/2);
fill(255, 0, 0);
text(currentInput, width/2, height*.75);
}

void keyPressed()
{
if(key == ENTER)
{
  lastInput = currentInput = currentInput + key;
  currentInput = "";
}
else if(key == BACKSPACE && currentInput.length() > 0)
{
  currentInput = currentInput.substring(0, currentInput.length() - 1);
}
else
{
  currentInput = currentInput + key;
}
}