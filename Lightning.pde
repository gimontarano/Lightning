int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0);
}
void draw()
{

	stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	while(endX < 310)
	{
		endX = endX + (int)(Math.random()*10);
		endY = endY + (int)(Math.random()*20) - 9;
		//System.out.println(endX);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	
}
void kiteAndKey()
{
	int x = (int)(Math.random()*50) + 200;
	int y = (int)(Math.random()*200) + 50;
	fill(255, 0, 0);
	//kite
	stroke(255);
	triangle(x, y, x-10, y-30, x-30, y+10);
	triangle(x, y, x-10, y-30, x+30, y-10);
	triangle(x, y, x+15, y+40, x-30, y+10);
	triangle(x, y, x+15, y+40, x+30, y-10);
	line(x, y, 150, 400);
	//key
	fill(153, 153, 0);
	noStroke();
	ellipse(x, y+5, 10, 10);
	stroke(153, 153, 0);
	strokeWeight(3);
	line(x, y+5, x, y+25);
	line(x, y+25, x-5, y+25);
	line(x, y+20, x-5, y+20);
	fill(255, 0, 0);
	ellipse(x, y+5, 9, 9);
	//lightning hit
	/*
	if(get(this.x, this.y) != color(255))
	{
		int startX1 = x;
		int startY1 = y;
		int endX1 = x;
		int endY1 = y;
		while(endX < 310)
		{
			endX1 = endX1 + (int)(Math.random()*10);
			endY1 = endY1 + (int)(Math.random()*20) - 9;
			//System.out.println(endX);
			line(startX1, startY1, endX1, endY1);
			startX1 = endX1;
			startY1 = endY1;
		}

	}
	*/
}
void mousePressed()
{
	background(0);
	kiteAndKey();
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

