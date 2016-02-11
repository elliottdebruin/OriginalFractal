public int moveLen;


public void setup()
{

 size(800, 800);
 background(50);
 moveLen = 800;

}
public void draw()
{

fractal(400,400,moveLen);
}


public void fractal(int x, int y, int len) 
{
	noFill();
	stroke(0,(int)(Math.random()*255),0);
	ellipse(x, y, len, len);
	if(len > 50){
		
		
	
		fractal(x-len/4, y, len/2);
		fractal(x, y-len/4, len/2);
		fractal(x+len/4, y, len/2);
		fractal(x, y+len/4, len/2);

		
	}
}