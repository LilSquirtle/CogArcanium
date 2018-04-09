/// @description Insert description here
// You can write your code in this editor
get_input();
depth=-y;
if (!instance_exists(objectFade))&&(room!=pauseRoom)&&(!instance_exists(textBox)){
	script_execute(state);
}
if (!instance_exists(objectFade)){
	if(pauseKey)&&(room!=pauseRoom)&&(room!=battle){
		fadeout(pauseRoom,c_white,.05,x,y);
	}
	if(pauseKey)&&(room==pauseRoom){
		fadeout(room0,c_white,.05,x,y);
	}
}