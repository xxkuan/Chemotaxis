Bacteria[] colony = new Bacteria[50]; 
 //declare bacteria variables here   
 void setup()   
 {
   size(500, 500);
   for(int i = 0; i < 50; i++){
   colony[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500));  
   }  
   //initialize bacteria variables here   
 }   
 void draw()   
 {
   for(int i = 0; i < 50; i++){
   colony[i].show();
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
   
   } 
   
 }    
