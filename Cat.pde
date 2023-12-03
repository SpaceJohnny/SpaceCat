class Cat{
  float y;
  float velocity;
  float gravity;
  
  //make cat physics 
  //cat doesn't move horizontally 
  //cat only moves by jumping vertically, accelerates when doing downwards 
  Cat(){   
    y=0;
    velocity=0;
    gravity=0.5;
  }
  
  //update cat position 
  void update(){
    velocity += gravity;
    y += velocity;
    
    //trying to troubleshoot the cat's constraints 
    y =constrain(y,0,height-40);
  }
  
//draw the cat
void display(){  
  noStroke();
  //white
  fill(255);
  //left paw
  rect(40,y+180,20,10);
  //right paw
  rect(100,y+180,20,10);
  
  //orange
  //found out fill(232,y+154,95) does a weird colour changing effect 
  fill(232,154,95);
  //cat body
  ellipse(80,y+170,60,100);
  //left arm
  triangle(40,y+180,60,y+150,60,y+180);
  //right arm
  triangle(100,y+150,120,y+180,100,y+180);
  //left leg
  rect(60,y+200,10,30);
  //right leg
  rect(90,y+200,10,30);
  //left foot
  triangle(70,y+210,80,y+220,70,y+230);
  //right foot 
  triangle(80,y+220,90,y+210,90,y+230);
  
  //white
  fill(255);
  //cat helmet
  ellipse(80,y+110,80,60);
  //cat stomach
  ellipse(80,y+180,40,60);
  
  //orange
  fill(232,154,95);
  //right cat ear 
  triangle(85,y+110,100,y+100,100,y+120);
  //left cat ear 
  triangle(75,y+110,60,y+100,60,y+120);
  //cat head
  ellipse(80,y+125,40,30);
  
  fill(10);
  //Nose
  triangle(81,y+130,86,y+130,84.5,y+133);
  //right eye
  ellipse(90,y+125,5,8);
  //left eye
  ellipse(75,y+125,5,8);
  fill(150);
  rect(50,y+135,60,5);
  
  fill(225);
  //right eye pupil 
  circle(90,y+122,2);
  //left eye pupil 
  circle(75,y+122,2);
  
  stroke(0);
  //right whiskers 
  line(95,y+130,110,y+125);
  line(95,y+130,110,y+130);
  //left whiskers
  line(70,y+130,55,y+125); 
  line(50,y+130,70,y+130);
  
}
  
  //gives cat vertical velocity when jumping 
  void jump(){
      velocity = -10;
  }
  
  //uses cat's head to check the distance from the asteroid the head 
  //the collision occurs if the cat's head radius of 20 sums up to asteroid radius
  boolean checkCollision(float asteroidX,float asteroidY, float asteroidRadius){
    float d = dist(80, y+125,asteroidX,asteroidY);
    return d < 20 + asteroidRadius;
  }
}
