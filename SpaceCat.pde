void setup(){
  size(400,400);
  frameRate(60);
}

void draw(){
  background(0);
  noStroke();
  
  //white
  fill(255);
  //left paw
  rect(40,180,20,10);
  //right paw
  rect(100,180,20,10);
  //left foot
  triangle(70,210,80,220,70,230);
  //right foot 
  triangle(80,220,90,210,90,230);
  
  //orange
  fill(232,154,95);
  //cat body
  ellipse(80,170,60,100);
  //left arm
  triangle(40,180,60,150,60,180);
  //right arm
  triangle(100,150,120,180,100,180);
  //left leg
  rect(60,200,10,30);
  //right leg
  rect(90,200,10,30);
  
  //white
  fill(255);
  //cat helmet
  ellipse(80,110,80,60);
  //cat stomach
  ellipse(80,180,40,60);
  
  //orange
  fill(232,154,95);
  //right cat ear 
  triangle(85,110,100,100,100,120);
  //left cat ear 
  triangle(75,110,60,100,60,120);
  //cat head
  ellipse(80,125, 40, 30);
  
  fill(10);
  //Nose
  triangle(81,130,86,130,84.5,133);
  //right eye
  ellipse(90,125,5,8);
  //left eye
  ellipse(75,125,5,8);
  fill(150);
  rect(50,135,60,5);
  
  fill(225);
  //right eye pupil 
  circle(90,122,2);
  //left eye pupil 
  circle(75,122,2);
  
  stroke(0);
  //right wiskers 
  line(95,130,110,125);
  line(95,130,110,130);
  //left wiskers
  line(70,130,55,125); 
  line(50,130,70,130);
}
