//
int xNumber = 400;
int yNumber = 400;
PImage bg;
PImage Monado;
PImage Mechon;
float rot = 0;
float randX = 0;
float randY = 0;
import processing.sound.*;

SoundFile file;

void setup()
{
  size(960, 600);
  bg = loadImage("Sword_Valley.png");
  randX = random(width);
  randY = random(height);
  imageMode(CENTER);
  Mechon = loadImage("mechon.png");
  Monado = loadImage("Monadopng.png");
  file = new SoundFile(this,"415 Mechanical Rhythm.mp3");
  file.play();
  file.amp(0.5);
}


void draw()
{
  background(bg);
  image(Mechon, randX, randY, 100, 110);
  pushMatrix();
    translate(mouseX,mouseY);
    rotate(rot);
    image(Monado, 0, 0, 27, 100);
  popMatrix();
    
rot-=PI/6;
  
  if (yNumber < -100)
  {
    yNumber = 800;
  }
  if(dist(mouseX,mouseY,randX,randY)<100)
  {
    randX = random(width);
    randY = random(height);
  }
}