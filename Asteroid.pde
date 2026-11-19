class Asteroid extends Floater  
{
  private double rotSpeed;
  public Asteroid(){
    corners=6;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = (int)(Math.random()*5)+5;
    yCorners[1] = -8;
    xCorners[2] = (int)(Math.random()*8)+10;
    yCorners[2] = (int)(Math.random()*5)-8;
    xCorners[3] = 6;
    yCorners[3] = (int)(Math.random()*5)+8;
    xCorners[4] = (int)(Math.random()*5)-13;
    yCorners[4] = (int)(Math.random()*5)+5;
    xCorners[5] = (int)(Math.random()*5)-8;
    yCorners[5] = (int)(Math.random()*5)-2;
    myPointDirection=(Math.random()*360);
    myCenterX=(Math.random()*400);
    myCenterY=(Math.random()*400);
    myXspeed = Math.random() * 5 - 3;
    myYspeed = Math.random() * 5 - 3;
    myColor=color(255);
    rotSpeed=(Math.random()*7)-3;
  }
  public void move(){
     turn(rotSpeed);
     super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
