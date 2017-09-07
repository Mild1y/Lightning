int starty = 0;
int startx = (int)(Math.random()*101)+100;
int endy = 0;
int endx = 150;
void setup()
{
	size(300,300);
    strokeWeight(1);
    background(0);
    stroke(128,128,128);
    fill(128,128,128);
    ellipse(-50,0,400,120);
    ellipse(200,0,200,180);	
    ellipse(300,0,200,140);
}
void cloud()
{
    stroke(128,128,128);
    fill(128,128,128);
    ellipse(-50,0,400,120);
    ellipse(200,0,200,180);	
    ellipse(300,0,200,140);
}
void draw()
{
	stroke(255,255,0);
	while (endy < 300)
	{
		endy = starty + (int)(Math.random()*10);
		endx = startx + (int)(Math.random()*19)-9;
		line(startx,starty,endx,endy);
		startx = endx;
		starty = endy;
	}
}
void mousePressed()
{
	fill(0);
	rect(0,0,310,310);
	cloud();
	starty = 0;
	startx = (int)(Math.random()*101)+100;
	endy = 0;	
	endx = 150;

}
