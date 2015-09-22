 void setup(){
   size(700,700);
   background(255);
   
   
 }
 
 void draw(){
   bodyBefore();
     if (mousePressed == true) {
       bodyAfter();
     }
   //add lightbulb that flashes yellow when key is pressed
 }

 void bodyBefore(){
   noFill();
   ellipse(width/2 -60, height/2 -50 , 80,80);  //left glass lense
   ellipse(width/2 +60, height/2 -50 , 80,80);  //right glass lense
  
   arc(width/2 -60, height/2 -50 , 15,15, 0, PI+QUARTER_PI, OPEN);  //left eye
   arc(width/2 +60, height/2 -50 , 15,15, 0, PI+QUARTER_PI, OPEN);  //right eye
  
   line(width/2 -100, height/2 -50, 200,height/2 -100);  //left glass arm
   line(width/2 +100, height/2 -50, 500,height/2 -100);  //right glass arm
   line(width/2 -20, height/2 -50, width/2 +20,height/2 -50);  //line connecting lenses
   line(200,height/2 -100,195, height/2 -70);  //left line off of left arm
   line(500,height/2 -100,505, height/2 -70);  //right line off of right arm
   fill(0);
   ellipse(width/2, height/2 +70, 10,10);  //mouth
   
 }
 
 void bodyAfter(){
   fill(255);
   arc(width/2 -90, height/2 -150 , 30,20, PI, PI+HALF_PI, OPEN);  //left eyebrow
   arc(width/2 +90, height/2 -150 , 30,20,  PI+HALF_PI, PI+PI, OPEN);  //right eyebrow
   ellipse(width/2 -60, height/2 -50 , 80,80);  //left glass lense
   ellipse(width/2 +60, height/2 -50 , 80,80);  //right glass lense
   ellipse(width/2 -60, height/2 -50 , 40,40);  //left eye
   ellipse(width/2 +60, height/2 -50 , 40,40);  //right eye
   fill(0);
   ellipse(width/2 -60, height/2 -50 , 20,20);  //left pupil
   ellipse(width/2 +60, height/2 -50 , 20,20);  //right pupil
   line(width/2 -100, height/2 -50, 200,height/2 -100);  //left glass arm
   line(width/2 +100, height/2 -50, 500,height/2 -100);  //right glass arm
   line(width/2 -20, height/2 -50, width/2 +20,height/2 -50);  //line connecting lenses
   line(200,height/2 -100,195, height/2 -70);  //left line off of left arm
   line(500,height/2 -100,505, height/2 -70);  //right line off of right arm
   ellipse(width/2, height/2 +70, 20,30);  //mouth
   
 }