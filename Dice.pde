Die dice;

void setup()
{
  size(592, 700);
  textSize(25);
  textAlign(CENTER, CENTER);
	noLoop();
}
void draw()
{
  background(200);
  int total = 0;
  for(int row = 0; row < 10; row++){
    for(int i = 0; i < 10; i++) {
      dice = new Die(60*i, 60*row);
      dice.roll();
      dice.show();
      if (dice.one == true){
        total++;
      }
      else if (dice.two == true){
        total = total + 2;
      }
      else if (dice.three == true){
        total = total + 3;
      }
      else if (dice.four == true){
        total = total + 4;
      }
      else if (dice.five == true){
        total = total + 5;
      }
      else if (dice.six == true){
        total = total + 6;
      }
    }
  }
  text("Total: " + str(total), 300, 650);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
  boolean one;
  boolean two;
  boolean three;
  boolean four;
  boolean five;
  boolean six;
	
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
    one = false;
    two = false;
    three = false;
    four = false;
    five = false;
    six = false;
	}
	void roll()
	{
    int num = (int)((Math.random()*6)+1);
		if(num == 1) {
      one = true;
    }
    else if(num == 2) {
      two = true;
    }
    else if(num == 3) {
      three = true;
    }
    else if(num == 4) {
      four = true;
    }
    else if(num == 5) {
      five = true;
    }
    else if(num == 6) {
      six = true;
    }
	}
	void show()
	{
		fill((int)(Math.random()*79)+176, (int)(Math.random()*79)+176, (int)(Math.random()*79)+176);
    rect(myX, myY, 50, 50, 7);
    if (one == true) {
      fill(0);
      ellipse(myX+25, myY+25, 5, 5);
    }
    else if (two == true) {
      fill(0);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
    }
    else if (three == true) {
      fill(0);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
    }
    else if (four == true) {
      fill(0);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
    }
    else if (five == true) {
      fill(0);
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
    }
    else if (six == true) {
      fill(0);
      ellipse(myX+25, myY+15, 5, 5);
      ellipse(myX+25, myY+35, 5, 5);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
    }
	}
}
