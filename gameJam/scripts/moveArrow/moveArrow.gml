get_input();
if (keyboard_check_pressed(ord("D"))){
	x+=50;
}
if (keyboard_check_pressed(ord("A"))){
	x-=50
}
if (x<50){
	x=50;
}
if (x>150){
	x=150;
}
if (keyboard_check_pressed(ord("E")))&&(playerTurn==1)&&(!instance_exists(objectTextBox)){
	playerTurn=0;
	if (x==50){
		attack();
	}
	if (x=100){
		heal();
	}
	if (x=150){
		runaway();
	}
}