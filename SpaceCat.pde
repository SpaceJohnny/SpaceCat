Cat cat;

//name of PVector 
PVector v;
//PVector to make background stars
PVector[] stars;

////skills inventory system 10////
//initialize 250 stars in the background 
//used later for stars array
int numStars = 250;

//used for when the game is restarted
boolean GameOverScreen = false; 

////skills inventory system 4////
void setup(){
  //originally 400x400
  //thought that a bigger size would be better to play with
  size(800,600);
  frameRate(60);
  
  ////skills inventory classes/objects 29////
  //assign vaiable cat to class cat 
  cat = new Cat();
  //arrayList named Asteroid to store ojects 
  asteroids = new ArrayList<Asteroid>();
  
  ////skills inventory system 8////
  ////skills inventory lists 35////
  //asteroid objects added to asteroids ArrayList
  //looped 5 times
  for (int i=0; i<5; i++){
    asteroids.add(new Asteroid());
  }
  
  ////skills inventory lists 33////
  ////skills inventory vectors 38////
  //make array of PVector of stars 
  //generate a random location of x and y of stars
  stars = new PVector[numStars];
  for(int i=0;i<numStars; i++){
    stars[i] = new PVector(random(width), random(height));
  }
  
  ////attempted to understand skills iventory vectors 41////
  //scouce: processing.com
  //what and how to use PVector.random2D() within this code
  v = PVector.random2D();
  println(v);
}

////skills inventory system 5////
void draw(){
  background(0);
  
  fill(230);
  noStroke(); 
  for (PVector star:stars){
    //stars move randomly ever so slightly in the background
    star.x += random(-0.1,0.1);
    star.y += random(-0.1,0.1);
    
    //stars are constrain to the screen
    star.x = constrain (star.x,0,width);
    star.y = constrain(star.y,0,height);
    
    //shape of the star 
    ellipse(star.x,star.y,2,2);
  }
  
  ////skills inventory loops 16////
  //call asteroid drawing from asteroid class
  for (Asteroid asteroid:asteroids){
    asteroid.display();
    asteroid.update();
  
  ////skills inventory control flow 12////
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

////skills inventory system 7////
////skills inventory control flow 13 & 14////
//if space key is pressed, the cat jumps 
void keyPressed(){
  if (key == ' '){
    cat.jump();
  //R to restart the game 
  } else if (key == 'R'||key == 'r'){
    restartGame();
  }
}

////skills inventory shapes 3////
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
