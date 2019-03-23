PImage bgImg;
PImage soilImg;
PImage groundhogImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;
int soldierX,soldierY,robotX,robotY,lightX1,lightX2,lightY;


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
  //light
  lightX1 = robotX+25; 
  lightX2 = robotX+25;
  lightY = robotY+37;
  
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
  soldierX %=640+80;
  image(soldierImg,soldierX-80,soldierY);
  
  //robot
  image(robotImg,robotX,robotY);
  
  //light
  strokeWeight(10);
  stroke(255,0,0);
  line(lightX1,lightY,lightX2,lightY);
  lightX1-=2; 
  if(lightX1 <= robotX+25-40){
    lightX2 = lightX1+40;
  }
  if(lightX1 < robotX+25-160){
    lightX1 = robotX+25;
    lightX2 = robotX+25;
  }
}
