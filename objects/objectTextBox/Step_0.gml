get_input();
var actionHold=keyboard_check(vk_space);
if(characters<message_length){
	characters+=message_speed+actionHold;
	message_draw=string_copy(message[message_current],0,characters);
}else{
	if (keyboard_check_pressed(vk_space)){
		if(message_current<message_end){
			message_current+=1;
			message_length=string_length(message[message_current]);
			characters=0;
			message_draw="";
		}
		else{
			instance_destroy();
		}
	}
}
