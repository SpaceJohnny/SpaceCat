void setup(){
  size(400,400);
  frameRate(60);
  myCat = new Cat(width/2, height/2,2);
}

void draw(){
  background(0);
  
  myCat.display();
  myCat.move();
}
  
