float x = 100;
float y = 100;

float xSpeed = 2;


void setup()
{
  size(200,200);
}

void draw()
{
  background(255);
  
  x = xSpeed + x;
  
  if (x > width || x < 0)
  {
    
  
  stroke(0);
  fill(0);
  ellipse(100,100,50,50);
}
