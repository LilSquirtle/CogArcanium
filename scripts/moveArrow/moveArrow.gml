get_input();
if (keyboard_check_pressed(vk_right)){
	x+=95;
}
if (keyboard_check_pressed(vk_left)){
	x-=95
}
if (x<200){
	x=200;
}
if (x>390){
	x=390;
}
if (keyboard_check_pressed(vk_enter)&&(playerTurn==1)&&(!instance_exists(objectTextBox))){
	playerTurn=0;
	if (x = 200){
		attack();
	}
	if (x = 295){
		heal();
	}
	if (x = 390){
		runaway();
	}
}