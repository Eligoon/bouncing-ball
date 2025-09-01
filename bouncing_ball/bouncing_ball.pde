// declaring and initializing position for ball
float x = 200;
float y = 200;

// declaring and initializing speed for both directions
float xSpeed = 2;
float ySpeed = 4;

float red;
float green;
float blue;

void setup()
{
  size(400, 400);
}

void draw()
{
  background(255);

  // updating position
  x = x + xSpeed;
  y = y + ySpeed;

  // If ball hits left or right edge, bounce back
  if ((x > width) ||( x < 0))
  {
    xSpeed = xSpeed * -1; // reverse horizontal direction
    red = random(255);
    green = random(255);
    blue = random(255);
  }

  //If ball hits ceiling or floor bounce back
  if ((y > height) || ( y < 0))
  {
    ySpeed = ySpeed * -1; // reverse vertical direction
    red = random(255);
    green = random(255);
    blue = random(255);
  }


  // drawing the circle
  stroke(0);
  fill(red,green,blue);
  ellipse(x, y, 25, 25);
}
