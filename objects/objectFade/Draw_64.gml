draw_set_color(fadeColor);
draw_set_alpha(image_alpha);

if(room!=target){
	image_alpha+=fadeSpeed;
	if(image_alpha==1){
		global.prevX=xx;
		global.prevY=yy;
		room_goto(target);
	}
}else{
	image_alpha-=fadeSpeed;
	if(image_alpha==0){
		instance_destroy();
	}
}
draw_rectangle(0,0,window_get_width(),window_get_height(),false);
draw_set_alpha(1);