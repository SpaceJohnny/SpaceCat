class Cat{
  PVector position;
  PVector velocity;
  PVector gravity;
  
  //make cat physics 
  //cat doesn't move horizontally 
  //cat only moves by jumping vertically, accelerates when doing downwards 
  //this was inspired by flappybird 
  Cat(){   
    position = new PVector(0,0);
    velocity = new PVector(0,0);
    gravity = new PVector(0,0.5);
  }
  
  //update cat position 
  void update(){
    velocity.add(gravity);
    position.add(velocity);
    
    //trying to troubleshoot the cat's constraints 
    //if the low value is 0, it will cause a game over screen   
    position.y = constrain(position.y,1,height+10);
    
    //if cat is out of bounds, there will be a game over screen
      if (position.y>=height||position.y<=0){
        gameOver();
  }
}

//draw the cat
void display(){  
  noStroke();
  //white
  fill(255);
  //left paw
  rect(40,position.y+180,20,10);
  //right paw
  rect(100,position.y+180,20,10);
  
  //orange
  //found out fill(232,y+154,95) does a weird colour changing effect 
  fill(232,154,95);
  //cat body
  ellipse(80,position.y+170,60,100);
  //left arm
  triangle(40,position.y+180,60,position.y+150,60,position.y+180);
  //right arm
  triangle(100,position.y+150,120,position.y+180,100,position.y+180);
  //left leg
  rect(60,position.y+200,10,30);
  //right leg
  rect(90,position.y+200,10,30);
  //left foot
  triangle(70,position.y+210,80,position.y+220,70,position.y+230);
  //right foot 
  triangle(80,position.y+220,90,position.y+210,90,position.y+230);
  
  //white
  fill(255,100);
  //cat helmet
  ellipse(80,position.y+110,80,60);
  fill(255);
  //cat stomach
  ellipse(80,position.y+180,40,60);
  
  //orange
  fill(232,154,95);
  //right cat ear 
  triangle(85,position.y+110,100,position.y+100,100,position.y+120);
  //left cat ear 
  triangle(75,position.y+110,60,position.y+100,60,position.y+120);
  //cat head
  ellipse(80,position.y+125,40,30);
  
  fill(10);
  //Nose
  triangle(81,position.y+130,86,position.y+130,84.5,position.y+133);
  //right eye
  ellipse(90,position.y+125,5,8);
  //left eye
  ellipse(75,position.y+125,5,8);
  fill(150);
  rect(50,position.y+135,60,5);
  
  fill(225);
  //right eye pupil 
  circle(90,position.y+122,2);
  //left eye pupil 
  circle(75,position.y+122,2);
  
  stroke(0);
  //right whiskers 
  line(95,position.y+130,110,position.y+125);
  line(95,position.y+130,110,position.y+130);
  //left whiskers
  line(70,position.y+130,55,position.y+125); 
  line(50,position.y+130,70,position.y+130);
}
  
  //gives cat vertical velocity when jumping 
  void jump(){
      velocity.y = -10;
  }
  
  //uses cat's head to check the distance from the asteroid the head 
  //i used the cat's head as a hitbox because the cat is kinda large so 
  //it would be easier to play if it was just the head
  //the collision occurs if the cat's head radius of 20 sums up to asteroid radius
  boolean checkCollision(float asteroidX,float asteroidY, float asteroidRadius){
    float d = dist(position.x+80,position.y+125,asteroidX,asteroidY);
    return d < 20 + asteroidRadius;
  }
}
