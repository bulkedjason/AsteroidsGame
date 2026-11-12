Spaceship ship;
boolean up = false;
boolean left = false;
boolean right = false;
Star[] sky=new Star[200];
public void setup() 
{
  ship=new Spaceship();
  size(500,500);
  for(int i=0;i<200;i++){
    sky[i]=new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i=0;i<200;i++){
    sky[i].show();
  }
  if (up)
  {
    ship.accelerate(0.3);
  }
  if (left)
  {
    ship.turn(-3);
  }
  
  if (right)
  {
    ship.turn(3);
  }
  ship.move();
  ship.show();
  ship.slowDown();
}
void keyPressed()
{
  if (keyCode == UP) up = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  if (key == ' ')
  {
    ship.myXspeed = 0;
    ship.myYspeed = 0;

    ship.myCenterX = Math.random() * width;
    ship.myCenterY = Math.random() * height;

    ship.myPointDirection = Math.random() * 360;
  }
}

void keyReleased()
{
  if (keyCode == UP) up = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
}
