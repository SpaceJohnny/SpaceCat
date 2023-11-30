Cat cat;
//aidhaiohjdo ahdoja
//coding is so painful :(
////problem: cat bounces up to 170 and goes out of bounds

void setup(){
  //originally 400x400
  //thought a bigger size would be better to play with
  size(800,600);
  frameRate(60);
  
  //assign vaiable cat to class cat 
  cat = new Cat();
  //arrayList named Asteroid to store ojects 
  asteroids = new ArrayList<Asteroid>();
  
  //asteroid objects added to asteroids ArrayList
  //looped 5 times
  for (int i = 0; i < 5; i++){
    asteroids.add(new Asteroid());
  }
}

void draw(){
  background(0);
  
  //call asteroid drawing from asteroid class
  for (Asteroid asteroid:asteroids){
    asteroid.display();
    asteroid.update();
  }
  //call cat drawing from cat class
  cat.display();
  cat.update();
}

//if space key is pressed, the cat jumps 
void keyPressed(){
  if (key == ' '){
    cat.jump();
  }
}


    
