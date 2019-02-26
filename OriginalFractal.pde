public void setup(){
 
    size(500, 500);
    ellipseMode(CENTER);
    
}

public void draw(){
 
 background(255);
 
 noStroke();
 if(keyPressed){
   if(key == ' '){
    fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256)); 
   }
}
      myFractal(350, 250, 250); 
 }



public void myFractal(int x, int y, int siz){
  

  arc(x, y, siz, siz, 0 - HALF_PI, HALF_PI);
  arc(x - 200, y, siz, siz, HALF_PI, PI + HALF_PI);
  arc(x - 50, y, siz/10, siz/10, 0, 2 * PI);
  arc(x - 150, y, siz/10, siz/10, 0, 2 * PI);
  if(siz > 5){
   myFractal(x, y - siz/2, siz/2);
   myFractal(x, y + siz/2, siz/2);
  }
}
