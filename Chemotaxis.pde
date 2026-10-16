Bacteria[] colony = new Bacteria[100]; 
 //declare bacteria variables here
 //to do list: go away only if certain distance
 void setup()   
 {
   size(1000, 1000);
   background(50, 50, 50);
   for(int i = 0; i < 100; i++){
   colony[i] = new Bacteria((int)(Math.random()*1000), (int)(Math.random()*1000));  
   }  
   //initialize bacteria variables here   
 }   
 void draw()   
 {
   background(50, 50, 50);
   for(int i = 0; i < 100; i++){
   colony[i].show();
   
   colony[i].move();
   if(colony[i].aX < 1000 && colony[i].aX > 0){
   colony[i].aX += (Math.random() < 0.5 ? -1 : 1);
   }
   if(colony[i].aY < 1000 && colony[i].aY > 0){
   colony[i].aY += (Math.random() < 0.5 ? -2 : 2);
   }
 
 }
   
   //move and show the bacteria   
 } 
 
 class Bacteria{     
   int aX, aY, aColor;
 
   Bacteria(int x, int y){
   aX = x;
   aY = y;
   aColor = color(0, 255, (int)(Math.random()*20) + 135);
   }
   
   void show(){
   fill(aColor);
   ellipse(aX, aY, 10, 10);  
   }
   
   void move(){
     
   if(aX < 1000 && aX > 0){
   if (mouseX < aX){aX += (int)(Math.random()*9) - 3 ;}
   else if (mouseX > aX){aX -= (int)(Math.random()*9) - 3;}
   }
   
   if(aY < 1000 && aY > 0){
   if (mouseX < aY){aY += (int)(Math.random()*9) - 3 ;}
   else if (mouseY > aY){aY -= (int)(Math.random()*9) - 3;}
   }
   
   }
 } 
