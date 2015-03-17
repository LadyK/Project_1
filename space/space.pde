Meteor m1 = new Meteor(new PVector(width,height)); 
Meteor [] astroid = new Meteor[15];

Shuttle s1 = new Shuttle(300,100);
Shuttle s2 = new Shuttle(150, 500);
Shuttle s3 = new Shuttle( 0, 450);

FlowField flowfield;

void setup()
{
  size(500, 500);
  background(0);
  flowfield = new FlowField(20); 
  for (int i = 0; i < 15; i++) 
   {
     astroid[i] = new Meteor( new PVector(random(width), random(height)));
   }
}

void draw()
{
  background(0);
  for ( Meteor m : astroid)
  {
    m.follow(flowfield);
    m.play();
    s1.flee(m.location);
    s1.play();
  }
  m1.wander();
  m1.play();
  s2.seek(s1.location);
  s2.play();
  s3.seek(m1.location);
  s3.play();
}

