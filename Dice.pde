Die hello = new Die(200,200);
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
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
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
	}
	void show()
	{
		//your code here
		noStroke();
		rect(myX, myY, 50, 50, 20);
	}
}
