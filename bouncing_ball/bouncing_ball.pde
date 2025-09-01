// declaring and initializing position for ball
float x = 200;
float y = 200;

// declaring and initializing speed for both directions
float xSpeed = random(2,5);
float ySpeed = random(1,6);

// declared and initializing colors for circle (0,0,0) RGB
float red;
float green;
float blue;

//declared and initializing circle size
float circleSize = 25;

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
  if (( x > width ) ||( x < 0 ))
  {
    xSpeed = xSpeed * -1; // reverse horizontal direction
    // randomizing color when hitting an edge
    red = random(255);
    green = random(255);
    blue = random(255);
    //randomizing circle size when hitting edge
    circleSize = random(25, 75);
  }

  //If ball hits ceiling or floor bounce back
  if (( y > height) || ( y < 0 ))
  {
    ySpeed = ySpeed * -1; // reverse vertical direction
    // randomizing color when hitting an edge
    red = random(255);
    green = random(255);
    blue = random(255);
    //randomizing circle size when hitting edge
    circleSize = random(25, 75);
  }


  // drawing the circle
  stroke(0);
  fill(red, green, blue);
  circle(x, y, circleSize);
}
