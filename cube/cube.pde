
class Cube {
  int x;
  int y;
  int z;
  int t;
  color c;
  
  Cube(int x,int y,int z,int t,color c){
    this.x=x;
    this.y=y;
    this.z=z;
    this.t=t;
    this.c=c;
  }
  
  public void setX(int x){
    this.x=x;
  }
  
  void Afficher(){
    translate(x,y,z);
    fill(c);
    box(t);
  }
}
Cube monCube;
float vitesse=2;
void setup(){
  size(600,600,P3D);
  monCube= new Cube(80,300,0,100,128);
}
void draw(){
  background(255);
  lights();
  
  monCube.x +=vitesse;
  if (monCube.x > 550 || monCube.x < 50 ){
    vitesse*=-1;
  }
  monCube.Afficher();
 
}
