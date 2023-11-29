void setup(){
  size(400,400);
  frameRate(60);
  myCat = new Cat();
}

void draw(){
  background(0);
  
  myCat.applyGravity();
  myCat.jump();
  myCat.show();
}


    
