class Bubbles
{
  int myX;
  float myY;
  float mySpeed;
  int mySize;
  int myColor;
  int myStroke;

  Bubbles()
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*410)-20;
    mySize = (int)(Math.random()*90)-20;
    mySpeed = mySize/100.0;
    myColor = color(171, 220, 255);
  }
  void move()
  {
    if(mouseX > myX)
    myX = myX + (int)(Math.random()*5)-2;
    else 
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY - mySpeed;
    if (myY < -80)
    {
      myY = 300;
    }
  }
  void show()
  {
    fill(myColor);
    stroke(0, 149, 255);
    ellipse(myX, myY, mySize, mySize);
  }
}
Bubbles[] bob= new Bubbles[100];
void setup()
{
  size(300, 300);
  background(255, 255, 255);
  for (int i = 0; i < bob.length; i++){
 bob[i] = new Bubbles(); 
  }
}
void draw() {
  background(255, 255, 255);
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].move();
  }
  
}
