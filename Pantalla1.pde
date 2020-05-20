class Pantalla1{
   //RECTANGULO CAMBIO DE COLOR
      float x,y;
      float ancho, alto;
  
  
  //Imagen Pantalla
    PImage Fondo1;
   
  Pantalla1(){
    //RECTANGULO
      x = 590; 
      y = 660;
      ancho= 180;
      alto = 45;
         
    //Imagen Pantalla
      Fondo1 = loadImage("fondo_01.jpg"); 
    }
    
  void display(){
    
    //Imagen Pantalla
     image(Fondo1,0,0);
          
    //Letra instrucciones
      PFont Instrucciones;
      Instrucciones = loadFont("EPSON_行書体Ｍ-80.vlw");
    //Letra STAR
      PFont Start;
      Start = loadFont("EPSON_太行書体Ｂ-80.vlw");
       
      textFont(Start, 50);
      fill(0);
      text("[ STAR ]",580,700); 
    
      textFont(Instrucciones, 17);
      fill(0);
      text("Press STAR to continue",587,740);  
    
     //CAMBIO DE COLOR
     if(mouseX > x && mouseX < x+ancho && mouseY > y && mouseY < y+alto) {
           textFont(Start, 50);
           fill(235, 228, 98);
           text("[ STAR ]",580,700);
           
           if(mousePressed==true){  
              SeleccionIni.play(0);
              pantalla++;
              Inicio.pause();
              mousePressed=false;
          
           }
            }
             }
              }
        
   
      
  
