Cat cat;

void setup(){
  size(400,400);
  frameRate(60);
  cat = new Cat();
}

void draw(){
  background(0);
  
  //call cat drawing from cat class
  cat.display();
  cat.update();
}

void keyPressed(){
  if (key == ' '){
    cat.jump();
  }
}


    
