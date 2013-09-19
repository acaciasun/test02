Tumbler myTumbler;
boolean startSwing=false;
void setup(){
 size(400,400); 
 strokeWeight(2);
 myTumbler=new Tumbler(200,250);
 frameRate(60);
}
void draw(){
  myTumbler.show();
  if(startSwing==true){
    myTumbler.swing();
  }
}
class Tumbler{
  float xPos,yPos;
  float angle=0*PI;
  float maxAngle;
  boolean swingDirect=true;//true:to right;false:to left;
  float swingSpeed=0.005;
  float r1=60;
  float r2=200;
  Tumbler(float x,float y){
    xPos=x;
    yPos=y;
  }
  void setAngle(float angle){
    this.angle=angle;
    this.maxAngle=angle;
  }
  void show(){
    background(51);
    translate(xPos+angle*r1,yPos);
    rotate(angle);
    fill(253,254,77);
    ellipse(0,0,2*r1,2*r1);
    noFill();
    arc(0,r1*0.4,r1*0.7,r1*0.7,0.2*PI,0.8*PI);
    arc(r1*0.4,r1*0.4,r1*0.7,r1*0.7,1.3*PI,1.7*PI);
    arc(-r1*0.4,r1*0.4,r1*0.7,r1*0.7,1.3*PI,1.7*PI);
    fill(245,59,42);
    arc(0,-r2,2*r2,2*r2,0.39*PI,0.61*PI,PIE);
    fill(247,164,40);
    arc(0,-r2,2*r2*0.9,2*r2*0.9,0.39*PI,0.61*PI,PIE);
    fill(244,246,38);
    arc(0,-r2,2*r2*0.8,2*r2*0.8,0.39*PI,0.61*PI,PIE);
    fill(91,217,26);
    arc(0,-r2,2*r2*0.7,2*r2*0.7,0.39*PI,0.61*PI,PIE);
    fill(27,157,223);
    arc(0,-r2,2*r2*0.6,2*r2*0.6,0.39*PI,0.61*PI,PIE);
    fill(81,26,223);
    arc(0,-r2,2*r2*0.5,2*r2*0.5,0.39*PI,0.61*PI,PIE);
    fill(170,0,251);
    arc(0,-r2,2*r2*0.5,2*r2*0.5,0.39*PI,0.61*PI,PIE);
    fill(245,59,42);
    arc(0,-r2,2*r2*0.4,2*r2*0.4,0.39*PI,0.61*PI,PIE);
    fill(247,164,40);
    arc(0,-r2,2*r2*0.3,2*r2*0.3,0.39*PI,0.61*PI,PIE);
    fill(244,246,38);
    arc(0,-r2,2*r2*0.2,2*r2*0.2,0.39*PI,0.61*PI,PIE);
    fill(91,217,26);
    arc(0,-r2,2*r2*0.1,2*r2*0.1,0.39*PI,0.61*PI,PIE);
  }
  void swing(){  
   if(maxAngle>0){
       if(this.swingDirect==true){
         if(this.angle<maxAngle){
           this.angle+=this.swingSpeed*PI;
         }else{
           this.swingDirect=false;
           maxAngle-=this.swingSpeed*PI;
         }
       }else{
         if(this.angle>-maxAngle){
           this.angle-=this.swingSpeed*PI;
         }else{
           this.swingDirect=true;
           maxAngle-=swingSpeed*PI;
         }
       }
   }
  } 
}
void mouseReleased(){
  myTumbler.setAngle(0.2*PI);
  startSwing=true;
}
