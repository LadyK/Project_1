public class Meteor
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float r;
  float wandertheta;
  float maxforce;
  float maxspeed;

  Meteor(PVector loc)
  {
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    location = loc;
    r = 6;
    wandertheta = 0;
    maxspeed = 0.7;
    maxforce = 0.01;
  }

  void update()
  {
    velocity.add(acceleration);
    velocity.limit(maxspeed);
    location.add(velocity);
    acceleration.mult(0);
  }

  void applyForce(PVector force)
  {
    acceleration.add(force);
  }

  void wander() 
  {
    float wanderR = 25;
    float wanderD = 80;
    float change = 0.3;
    wandertheta += random(-change, change);
    PVector circleloc = velocity.get(); 
    circleloc.normalize();
    circleloc.mult(wanderD);
    circleloc.add(location);
    float h = velocity.heading2D();
    PVector circleOffSet = new PVector(wanderR*cos(wandertheta+h), wanderR*sin(wandertheta+h));
    PVector target = PVector.add(circleloc, circleOffSet);
    seek(target);
  }

  void seek(PVector target)
  {
    PVector desired = PVector.sub(target, location);
    desired.normalize();
    desired.mult(maxspeed);
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);
    applyForce(steer);
  }
  
  void follow(FlowField flow) 
  {
    PVector desired = flow.lookup(location);
    desired.mult(maxspeed);
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);
    applyForce(steer);
  }

  void borders() 
  {
    if (location.x < -r) location.x = width+r;
    if (location.y < -r) location.y = height+r;
    if (location.x > width+r) location.x = -r;
    if (location.y > height+r) location.y = -r;
  }

  void display() {
    fill(139,69,19);
    stroke(0);
    pushMatrix();
    translate(location.x, location.y);
    ellipse(0, 0, r*2, r*2);
    popMatrix();
  }

  void play()
  {
    update();
    borders();
    display();
  }
}

