//aidhaiohjdo ahdoja
//coding is so painful :(
Cat cat;

//used for when the game is restarted
boolean GameOverScreen = false; 

void setup(){
  //originally 400x400
  //thought that a bigger size would be better to play with
  size(800,600);
  frameRate(60);
  
  //assign vaiable cat to class cat 
  cat = new Cat();
  //arrayList named Asteroid to store ojects 
  asteroids = new ArrayList<Asteroid>();
  
  //asteroid objects added to asteroids ArrayList
  //looped 5 times
  for (int i=0; i<5; i++){
    asteroids.add(new Asteroid());
  }
}

void draw(){
  background(0);
  
  //call asteroid drawing from asteroid class
  for (Asteroid asteroid:asteroids){
    asteroid.display();
    asteroid.update();
  
  //check if cat collides with asteroidX,Y, and radius 
  //if collision occurs, game over 
  if (cat.checkCollision(asteroid.asteroidX,asteroid.asteroidY,asteroid.radius)){
    gameOver();
    }
  }
  
  //call cat drawing from cat class
  cat.display();
  cat.update();
}

//if space key is pressed, the cat jumps 
void keyPressed(){
  if (key == ' '){
    cat.jump();
  //R to restart the game 
  } else if (key == 'R'||key == 'r'){
    restartGame();
  }
}

//Game Over screen when cat collides with asteroid 
void gameOver(){
  background(255,0,0);
  //white text
  fill(255);
  textSize(32);
  textAlign(CENTER,CENTER);
  text("Game Over! Press 'R' to Restart", width/2,height/2);
  //stops the draw loop 
  noLoop();
  //game over screen is on 
  GameOverScreen = true;
}

//game over screen is off when the game restarts 
void restartGame(){
  //starts the draw loop 
  loop();
  GameOverScreen = false;
  //reset cat class and asteroids ArrayList 
  cat = new Cat();
  asteroids.clear();
  
  //new asteroids addded into ArrayList 
  for (int i=0; i<5; i++){
    asteroids.add(new Asteroid());
  }
}

    
