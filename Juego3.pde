//Sonido
  import ddf.minim.*;
  import ddf.minim.analysis.*;
  import ddf.minim.effects.*;
  import ddf.minim.signals.*;
  import ddf.minim.spi.*;
  import ddf.minim.ugens.*;

  Minim minim;
  //Canciones
    AudioPlayer Inicio;
    AudioPlayer SeleccionIni;
    AudioPlayer Seleccion;
    AudioPlayer Pelea;
    AudioPlayer ganar;
    AudioPlayer meow1;
    AudioPlayer meow2;
    
  //Variables
    int pantalla = 1;
    int turnos=1;
    
    int ataque1, ataque2;
    
    int jugadorVida1;
    int jugadorVida2;
 
    int jugador1, jugador2;
    int seleccion=1;
    
    int ganador=1; 
   
 //Gatos
   teiichi Gato1;
   kikuma Gato2;
   rorando Gato3;
   komei Gato4;
   momo Gato5;
   
   teiichid Gato01;
   kikumad Gato02;
   rorandod Gato03;
   komeid Gato04;
   momod Gato05;
   
   teiichiw win1;
   kikumaw win2;
   rorandow win3;
   komeiw win4;
   momow win5;
   
      
  //Pantallas
    Pantalla1 uno;
    Pantalla2 dos;
    Pantalla3 tres;
    Pantalla4 cuatro;

void setup(){
  fullScreen();
  //Pantallas
  uno = new Pantalla1();
  dos = new Pantalla2();
  tres = new Pantalla3();
  cuatro = new Pantalla4();
  
  //Gatos izq
  Gato1 = new teiichi();
  Gato2 = new kikuma();
  Gato3 = new rorando();
  Gato4 = new komei();
  Gato5 = new momo();
  //Gatos der
  Gato01 = new teiichid();
  Gato02 = new kikumad();
  Gato03 = new rorandod();
  Gato04 = new komeid();
  Gato05 = new momod();
  //Gatos WIN
  win1 = new teiichiw();
  win2 = new kikumaw();
  win3 = new rorandow();
  win4 = new komeiw();
  win5 = new momow();
  //Sonido
  minim =new Minim(this);
  Inicio = minim.loadFile("intro.mp3");
  SeleccionIni = minim.loadFile("Inicioselect.mp3");
  Seleccion = minim.loadFile("seleccion.mp3");
  Pelea = minim.loadFile("pelea.mp3");
  ganar = minim.loadFile("ganacion.mp3");
  meow1 = minim.loadFile("meow1.mp3");
  meow2 = minim.loadFile("meow2.mp3");
  Inicio.loop(0);
 
  }
  
void draw(){ 
    background(255);
    switch(pantalla){
           
      case 1:
         
         uno.display();
           
         
        break;
        
      case 2:
         dos.display();
            if(seleccion==1){
            dos.seleccionJugador1();  
            }
            if(seleccion==2){
            dos.seleccionJugador2();            
            }
            if(seleccion==3){
            Pelea.play(0); 
            textSize(30);
            fill(250);
            text("Press space bar to continue...", 480,710);
             }
             if(key==' ' && keyPressed)
            {
             pantalla++;
             keyPressed=false;
            }
           
            break;

         case 3:
            tres.display();
            tres.pelea();
           
            
            break;
            
         case 4:
            cuatro.display();
            
             if(jugadorVida2<=0){
               cuatro.ganador1();
               ganar.play();
               }
             if(jugadorVida1<=0){
                cuatro.ganador2();
                ganar.play();
                }
                
         // LETRAS 
        PFont fuente1;
        fuente1 = loadFont("EPSON_太行書体Ｂ-80.vlw");
        
          //WIN!!!!    
          fill(249, 246, 0);
          textFont(fuente1, 100);
          text("WINNER!", 520, 700);
         
         if(key==' ' && keyPressed)
         {
         ganar.pause();
         pantalla=1;
         seleccion=1;
         ganador=1;
         keyPressed=false;
          }
         break;      
   }
  }
  
