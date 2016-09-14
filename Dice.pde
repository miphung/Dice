PFont f;

void setup()
{
	size(500, 500);
	noLoop();
	f = createFont("Arial",16,true);
}
void draw()
{
	//your code here
	background(255);
	int total = 0;
	for (int y =25; y< 455; y+=75)
	{
		for (int x = 25;x <455; x = x+65)
		{
			Die more = new Die(x,y);
			more.roll();
			more.show();
			total = total + more.numDots;
		}

	}
	textFont(f,20);
	fill(0);
	text(" The total is: " + total + " ", 250, 497);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, numDots, size, total;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		roll();
		myX = x;
		myY = y;
		size = 50;
	}
	void roll()
	{
		//your code here
		numDots = (int)(Math.random()*6)+1;
	}
	void show()
	{
		//your code here
		int circleSize;
		circleSize = size/4;
		int total;
		noStroke();
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(myX, myY, size, size, 20);
		fill(255);

		if (numDots == 1)
		{
			ellipse(myX+circleSize+13, myY+circleSize+12, circleSize, circleSize);
		}
		if (numDots == 2) 
		{
			ellipse(myX+circleSize+5, myY+circleSize+9, circleSize, circleSize);
			ellipse(myX+circleSize+19, myY+circleSize+21, circleSize, circleSize);
		}
		if (numDots ==3)
		{
			ellipse(myX+circleSize+3, myY+circleSize+3, circleSize/1.3, circleSize/1.3);
			ellipse(myX+circleSize+12, myY+circleSize+11, circleSize/1.3, circleSize/1.3);
			ellipse(myX+circleSize+21, myY+circleSize+21, circleSize/1.3, circleSize/1.3);
		}
		if (numDots == 4)
		{
			ellipse(myX+circleSize+3, myY+circleSize+3, circleSize/1.2, circleSize/1.2);
			ellipse(myX+circleSize+21, myY+circleSize+3, circleSize/1.2, circleSize/1.2);
			ellipse(myX+circleSize+3, myY+circleSize+21, circleSize/1.2, circleSize/1.2);
			ellipse(myX+circleSize+21, myY+circleSize+21, circleSize/1.2, circleSize/1.2);	
		}
		if(numDots ==5)
		{
			ellipse(myX+circleSize+2, myY+circleSize+3, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+23, myY+circleSize+3, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+2, myY+circleSize+25, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+23, myY+circleSize+25, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+13, myY+circleSize+13, circleSize/1.4, circleSize/1.4);
		}
		if (numDots == 6)
		{
			ellipse(myX+circleSize+2, myY+circleSize+3, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+23, myY+circleSize+3, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+2, myY+circleSize+25, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+23, myY+circleSize+25, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+2, myY+circleSize+15, circleSize/1.4, circleSize/1.4);
			ellipse(myX+circleSize+23, myY+circleSize+15, circleSize/1.4, circleSize/1.4);

		}


	}
}
