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
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

