/// @description Insert description here
// You can write your code in this editor
draw_set_color(fadeColor);
draw_set_alpha(image_alpha);

if(room!=target){
	image_alpha+=fadeSpeed;
	if(image_alpha==1){
		objectPlayer.x=xx;
		objectPlayer.y=yy;
		room_goto(target);
	}
}else{
	image_alpha-=fadeSpeed;
	if(image_alpha==0){
		instance_destroy();
	}
}
draw_rectangle(0,0,view_wport*2,view_hport*2,false);
draw_set_alpha(1);