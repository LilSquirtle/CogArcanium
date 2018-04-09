dir = point_direction(0,0,xaxis,yaxis);
if (xaxis==0) && (yaxis==0){
	len=0;
}
else{
	len=spd;
	get_face();
}
hspd=lengthdir_x(len,dir);
vspd=lengthdir_y(len,dir);
if(place_meeting(x+hspd,y,objectWall)){
	while(!place_meeting(x+sign(hspd),y,objectWall)){
		x+=sign(hspd);
	}
	hspd=0;
}
x+=hspd;
if(place_meeting(x,y+vspd,objectWall)){
	while(!place_meeting(x,y+sign(vspd),objectWall)){
		y+=sign(vspd);
	}
	vspd=0;
}
y+=vspd;

if(len==1){
	var rng=irandom(steps);
	if (rng==steps)&&(steps<=850){
		fadeout(battle,c_white,.025,x,y);
		
		steps=1000;
	}
	else{
		steps-=1;
	}
}





image_speed=1;
if(len==0){
	image_index=0;
}
switch(face){
	case 0:
		sprite_index=rightSprite;
		break;
	case 1:
		sprite_index=rightSprite;
		break;
	case 2:
		sprite_index=upSprite;
		break;
	case 3:
		sprite_index=leftSprite;
		break;
	case 4:
		sprite_index=leftSprite;
		break;
	case 5:
		sprite_index=leftSprite;
		break;
	case 6:
		sprite_index=downSprite;
		break;
	case 7:
		sprite_index=rightSprite;
		break;
}