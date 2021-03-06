int num = 2000;
int range = 6;

float[] ax = new float[num];
float[] ay = new float[num]; 

void setup() 
{
  size(640, 360);
  for(int i = 0; i < num; i++) {
    ax[i] = width/2;
    ay[i] = height/2;
  }
  frameRate(30);
}

void draw() 
{
  background(51);
  
  for(int i = 1; i < num; i++) {
    ax[i-1] = ax[i];
    ay[i-1] = ay[i];
  }

  ax[num-1] += random(-range, range);
  ay[num-1] += random(-range, range);

  ax[num-1] = constrain(ax[num-1], 0, width);
  ay[num-1] = constrain(ay[num-1], 0, height);
  
  for(int i=1; i<num; i++) {    
    float val = float(i)/num * 204.0 + 51;
    stroke(val);
    line(ax[i-1], ay[i-1], ax[i], ay[i]);
  }
}
