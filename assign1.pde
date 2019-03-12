PImage bgImg;
PImage soilImg;
PImage groundhogImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;
int soldierX,soldierY,robotX,robotY,lightX,lightY;


void setup() {
	size(640, 480, P2D);
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  soldierImg = loadImage("img/soldier.png");
  robotImg = loadImage("img/robot.png");
  
  //soldier
  soldierY = 160+floor(random(4))*80;
  
  //robot
  robotX = 160+floor(random(400));
  robotY = 160+floor(random(4))*80;
  
}

void draw() {
  //bg
  image(bgImg,0,0);
  //soil
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
  
  //groundhog
  image(groundhogImg,280,80);
  
  //life
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  
  //soldoer
  soldierX = soldierX+5;
  soldierX %=640;
  image(soldierImg,soldierX,soldierY);
  
  //robot
  image(robotImg,robotX,robotY);
  
  //light
  noStroke();
  fill(255,0,0);
  lightY = robotY+33;
  lightX = lightX-2;
  lightX = lightX % 160;
  rect(lightX+robotX-2,lightY,30,10,5,5,5,5);
  
}
