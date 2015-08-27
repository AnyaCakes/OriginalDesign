int r=1;
boolean s=false;
boolean b=false;
int rc=0;
int gc=0;
int bc=0;



void setup()
{
	size(600,600, P3D);
	background(0);
	fill(102);
	back();
}

void back(){
	for(int i=0; i<800; i++){
		stroke(i/random(10),i+random(10),i/random(4));
		line(i,0,i,800);
	}
}

void draw()
{	

	r=mouseX/8;
	stroke(mouseX,mouseY,mouseY/4);
	
	translate(mouseX, mouseY, 0); 
	rotate(r);
	fill(rc,gc, bc);
	sphere(50);
		rotate(-r);

	translate(-mouseX,-mouseY,0);

}
void mousePressed(){
	
	back();
}