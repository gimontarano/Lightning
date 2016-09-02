int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  
  background(0);
}
void draw()
{

	stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	strokeWeight(3);
	while(endX < 310)
	{
		endX = endX + (int)(Math.random()*10);
		endY = endY + (int)(Math.random()*20) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	
	
}
/*void cloud()
{
	noStroke();
	fill(127);
	int cloudSizeX = (int)(Math.random()*30)+20;
	int cloudSizeY = (int)(Math.random()*30)+30;
	
	
	for(int i = 0; i < 420; i = i + 30)
	{
		ellipse(0, i, cloudSizeX, cloudSizeY);
	}
}*/
void kiteAndKey()
{
	//int x = (int)(Math.random()*50) + 200;
	//int y = (int)(Math.random()*200) + 50;
	fill(255, 0, 0);
	strokeWeight(1);
	//kite
	stroke(255);
	triangle(mouseX, mouseY, mouseX-10, mouseY-30, mouseX-30, mouseY+10);
	triangle(mouseX, mouseY, mouseX-10, mouseY-30, mouseX+30, mouseY-10);
	triangle(mouseX, mouseY, mouseX+15, mouseY+40, mouseX-30, mouseY+10);
	triangle(mouseX, mouseY, mouseX+15, mouseY+40, mouseX+30, mouseY-10);
	//string
	line(mouseX, mouseY, 150, 400);
	//key
	fill(153, 153, 0);
	noStroke();
	ellipse(mouseX, mouseY+5, 10, 10);
	stroke(153, 153, 0);
	strokeWeight(3);
	line(mouseX, mouseY+5, mouseX, mouseY+25);
	line(mouseX, mouseY+25, mouseX-5, mouseY+25);
	line(mouseX, mouseY+20, mouseX-5, mouseY+20);
	fill(255, 0, 0);
	ellipse(mouseX, mouseY+5, 9, 9);
	stroke(0);
	strokeWeight(1);
	point(mouseX, mouseY);
	
}
void mousePressed()
{
	background(0);
	kiteAndKey();
	//cloud();
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

