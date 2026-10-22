Bacteria[] colony = new Bacteria[500];
int borderX = 10;
int borderY = 10;
 //declare bacteria variables here
 void setup()   
 {
   size(800, 800);
   background(50, 50, 50);
   for(int i = 0; i < colony.length - 1; i++){
   colony[i] = new Bacteria((int)(Math.random()*780) + 10, (int)(Math.random()*780) + 10);  
   }  
   //initialize bacteria variables here   
 }   
 void draw()   
 {
   background(50, 50, 50);
   for(int i = 0; i < colony.length - 1; i++){
   colony[i].show();
   
   colony[i].recolor();
   
   colony[i].move();
   if(colony[i].aX < width - borderX && colony[i].aX > borderX){
   colony[i].aX += (Math.random() < 0.5 ? -1 : 1);
   }
   if(colony[i].aY < height - borderY && colony[i].aY > borderY){
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
     
   if (dist(mouseX, mouseY, aX, aY) < 75){
   if(aX < width - borderX && aX > borderX){
   if (mouseX < aX){aX += (int)(Math.random()*9) - 3 ;}
   else if (mouseX > aX){aX -= (int)(Math.random()*9) - 3;}
   }
   }
   
   if (dist(mouseX, mouseY, aX, aY) < 75){
   if(aY < height - borderY && aY > borderY){
   if (mouseX < aY){aY += (int)(Math.random()*9) - 3 ;}
   else if (mouseY > aY){aY -= (int)(Math.random()*9) - 3;}
   }
   }
   
   }
   
   void recolor(){
     if (dist(mouseX, mouseY, aX, aY) < 10){
       // 1. Extract the individual channels (returns a float)
      float r = red(aColor);
      float g = green(aColor);
      r += 200;      
      g += 100;

      
      // 3. Recombine into a new color int
      aColor = color(r, g, (int)(Math.random()*20) + 135);
     }
   }
 } 
