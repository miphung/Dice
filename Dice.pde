Die hello = new Die(200,200);
Die bye = new Die(300,300);
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	//your code here
	hello.roll();
	hello.show();
	bye.roll();
	bye.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, numDots;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		roll();
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		numDots = 1;
	

	}
	void show()
	{
		//your code here
		noStroke();
		fill(255);
		rect(myX, myY, 50, 50, 20);
		fill(0);
		ellipse(myX-126, myY-150, 15, 15);
	}
}
