class Spaceship extends Floater  
{   
  public Spaceship(){
    corners=3;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myPointDirection=0;
    myCenterX=200;
    myCenterY=200;
    myXspeed=0;
    myYspeed=0;
    myColor=color(255);
  }
  public void slowDown()
  {
    myXspeed *= 0.98;
    myYspeed *= 0.98;
  }
