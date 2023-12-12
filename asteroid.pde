////skills inventory lists 34////
//arraylist to randomize asteroids
ArrayList<Asteroid> asteroids;

class Asteroid{
  ////skills inventory system 9////
  float asteroidX;
  float asteroidY;
  float speed;
  float radius;
  
  Asteroid(){
    asteroidX = width + radius;
    asteroidY = random(height);
    //randomize speed and radius 
    speed = random(3,6);
    radius = random(15,30);
  }
  
  ////skills inventory functions 20////
  void update(){
    //move asteroids from left to right 
    asteroidX -= speed;
    
    //reset asteroids
    if (asteroidX < -radius){
      asteroidX = width + radius;
      asteroidY = random(height);
    }
  }
  
  //draw the asteroid 
  void display(){
    fill(255);
    ellipse(asteroidX,asteroidY,radius*2,radius*2);
  }
}
