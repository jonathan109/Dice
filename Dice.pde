int count;
void setup()
{
  noLoop();
  size(700, 600);
}
void draw()
{
  count = 0;
  fill(225);
  rect(0,550,700,620);
  for (int y = 0; y < 550; y= y + 50)
  {
    for (int x = 0; x < 700; x = x + 50)
    {
      Die jim = new Die (x, y);
      count = count + jim.myDots;
      jim.show();
    }
  }
  textSize(20);
  text("Your roll is",200,575);
  text(count,320,575);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, myDots;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    if ((int)(Math.random()*7)<1)
      myDots = 1;
    else if ((int)(Math.random()*7)<2)
      myDots = 2;
    else if ((int)(Math.random()*7)<3)
      myDots = 3;
    else if ((int)(Math.random()*7)<4)
      myDots = 4;
    else if ((int)(Math.random()*7)<5)
      myDots = 5;
    else
      myDots = 6;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 10);
    fill(0);
    if (myDots == 1)
      ellipse(myX+25, myY+25, 10, 10);
    else if (myDots == 2)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    else if (myDots == 3)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } 
    else if (myDots == 4)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    else if (myDots == 5)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }
    else
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+25, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
  }
}