PImage bgImg;
PImage soilImg;
PImage groundhogImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;
int soldierX;
int lightX,lightY;


void setup() {
	size(640, 480, P2D);
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  soldierImg = loadImage("img/soldier.png");
  robotImg = loadImage("img/robot.png");
  

}

void draw() {
  image(bgImg,0,0);
  image(soilImg,0,160);
  
  //grass
  noStroke();
  colorMode(RGB);
  fill(124, 204, 25);
  rect(0,145,640,15);
  
  //sun
  colorMode(RGB);
  stroke(255,255,0);
  strokeWeight(5);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  image(groundhogImg,280,80);
  
  //life
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  //soldier
  soldierX = soldierX+5;
  soldierX %=640;
  image(soldierImg,soldierX,320);
  
  //robot
  image(robotImg,500,160);
  
  //light
  noStroke();
  fill(255,0,0);
  
  
  lightY = 193;
  lightX = lightX-2;
  lightX = lightX % 160;
  
  rect(lightX+499,lightY,30,10,5,5,5,5);
  
}
