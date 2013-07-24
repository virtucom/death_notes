Maxim maxim;
AudioPlayer mi;
AudioPlayer la;
AudioPlayer re;
AudioPlayer sol;
AudioPlayer si;
AudioPlayer mi2;

PImage fondo;
PImage mastilA;
PImage mastilB;
PImage cuerdasA;
PImage cuerdasB;
PImage pua;
int posicion;
float posicionPua;

boolean inMi;
boolean inLa;
boolean inRe;
boolean inSol;
boolean inSi;
boolean inMi2;

void setup()
{
  fondo =loadImage("fondo.png");
  mastilA = loadImage("mastil.png");
  mastilB = loadImage("mastil.png");
  cuerdasA = loadImage("cuerdas.png");
  cuerdasB = loadImage("cuerdas.png");
  pua = loadImage("pua.png");
  posicionPua = width/2;
  posicion = 0;
  
  size(480,640);
  imageMode(CENTER);
  
  maxim = new Maxim(this);
   mi = maxim.loadFile("mi.wav");
   la = maxim.loadFile("la.wav");
   re = maxim.loadFile("re.wav");
   sol = maxim.loadFile("sol.wav");
   si = maxim.loadFile("si.wav");
   mi2 = maxim.loadFile("mi2.wav");
   mi.setLooping(false);
   la.setLooping(false);
   re.setLooping(false);
   sol.setLooping(false);
   si.setLooping(false);
   mi2.setLooping(false);
   
   inPreMi = false;
   inMi = false;
   inLa = false;
   inRe = false;
   inSol = false;
   inSi = false;
   inMi2 = false;
   inPostMi2 = false;
}
void draw()
{
  image(fondo,width/2,height/2);
  image(mastilA,1+width/2,(posicion%height)+height/2);
  image(mastilB,1+width/2,(posicion%height)-height/2);
  image(cuerdasA,1+width/2,(posicion%height)+height/2);
  image(cuerdasB,1+width/2,(posicion%height)-height/2);
  image(pua,posicionPua,4*height/5);
  posicion+=3;
}
void mouseDragged()
{
  posicionPua = map(mouseX,0,width,0,width);
  if (mouseX > 6*width/26 - width/26 && mouseX < 6*width/26 + width/26)
  {
    if(!inPreMi)
    {
      inPreMi = true;
      inMi = false;
      inLa = false;
      inRe = false;
      inSol = false;
      inSi = false;
      inMi2 = false;
      inPostMi2 = false;
    }
  }
  if (mouseX > 8*width/26 - width/26 && mouseX < 8*width/26 + width/26)
  {
    if(!inMi)
    {
      mi.cue(0);
      mi.play();
      inPreMi = false;
      inMi = true;
      inLa = false;
      inRe = false;
      inSol = false;
      inSi = false;
      inMi2 = false;
      inPostMi2 = false;
    }
  }
  if (mouseX > 10*width/26 - width/26 && mouseX < 10*width/26 + width/26)
  {
    if(!inLa)
    {
      la.cue(0);
      la.play();
      inPreMi = false;
      inMi = false;
      inLa = true;
      inRe = false;
      inSol = false;
      inSi = false;
      inMi2 = false;
      inPostMi2 = false;
    }
  }
  if (mouseX > 12*width/26 - width/26 && mouseX < 12*width/26 + width/26)
  {
    if(!inRe)
    {
      re.cue(0);
      re.play();
      inPreMi = false;
      inRe = true;
      inLa = false;
      inMi = false;
      inSol = false;
      inSi = false;
      inMi2 = false;
      inPostMi2 = false;
    }
  }
  if (mouseX > 14*width/26 - width/26 && mouseX < 14*width/26 + width/26)
  {
    if(!inSol)
    {
      sol.cue(0);
      sol.play();
      inPreMi = false;
      inSol = true;
      inLa = false;
      inRe = false;
      inMi = false;
      inSi = false;
      inMi2 = false;
      inPostMi2 = false;
    }
  }
  if (mouseX > 16*width/26 - width/26 && mouseX < 16*width/26 + width/26)
  {
    if(!inSi)
    {
      si.cue(0);
      si.play();
      inPreMi = false;
      inSi = true;
      inLa = false;
      inRe = false;
      inSol = false;
      inMi = false;
      inMi2 = false;
      inPostMi2 = false;
    }
  }
  if (mouseX > 18*width/26 - width/26 && mouseX < 18*width/26 + width/26)
  {
    if(!inMi2)
    {
      mi2.cue(0);
      mi2.play();
      inPreMi = false;
      inMi2 = true;
      inLa = false;
      inRe = false;
      inSol = false;
      inSi = false;
      inMi = false;
      inPostMi2 = false;
    }
  }
  if (mouseX > 20*width/26 - width/26 && mouseX < 20*width/26 + width/26)
  {
    if(!inPostMi2)
    {
      inPreMi = false;
      inMi = false;
      inLa = false;
      inRe = false;
      inSol = false;
      inSi = false;
      inMi2 = false;
      inPostMi2 = true;
    }
  }
  
}
void mouseClicked()
{
  posicionPua = map(mouseX,0,width,0,width);
  if (mouseX > 8*width/26 - width/26 && mouseX < 8*width/26 + width/26)
  {
    mi.cue(0);
    mi.play();
  }
  if (mouseX > 10*width/26 - width/26 && mouseX < 10*width/26 + width/26)
  {
    la.cue(0);
    la.play();
  }
  if (mouseX > 12*width/26 - width/26 && mouseX < 12*width/26 + width/26)
  {
    re.cue(0);
    re.play();
  }
  if (mouseX > 14*width/26 - width/26 && mouseX < 14*width/26 + width/26)
  {
    sol.cue(0);
    sol.play();
  }
  if (mouseX > 16*width/26 - width/26 && mouseX < 16*width/26 + width/26)
  {
    si.cue(0);
    si.play();
  }
  if (mouseX > 18*width/26 - width/26 && mouseX < 18*width/26 + width/26)
  {
    mi2.cue(0);
    mi2.play();
  }
}


