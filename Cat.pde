class Cat {
  float y;
  //control the vertical velocity of the meow meow 
  float vy;
  float gravity;
  
  Cat() {
    y = height/2;
    vy = 0;
    // play around with gravity
    gravity = 0.1;
  }
  
  void applyGravity() {
    vy += gravity;
    y += vy;
    
    if (y>height-20){
      y=height-20;
      vy *= -0.6;
    }
  }
  
  void jump(){
    if (key == 'w' || key == 'W' && y == height -20){
      vy =-6;
    }
  }
  
void show(){
  noStroke();
  //draw the cat
  //left paw
  rectMode(CORNER);
  //white
  fill(255);
  rect(40,y+180,20,10);
  //right paw
  rect(100,y+180,20,10);
  
  //orange
  fill(232,y+154,95);
  //cat body
  ellipse(80,y+170,60,100);
  //left arm
  triangle(40,y+180,60,150,60,180);
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
  //right wiskers 
  line(95,y+130,110,125);
  line(95,y+130,110,130);
  //left wiskers
  line(70,y+130,55,125); 
  line(50,y+130,70,130);
  }
}

Cat myCat;{
}
