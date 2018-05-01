if(file_exists(save_file)){
	var file;
	var line;
	file = file_text_open_read(working_directory + "\level.txt");
	global.lastRoom	= file_text_read_real(file);
	global.playerTileX =  file_text_read_real(file);
	global.playerTileY = file_text_read_real(file);
	//show_message(string(global.lastRoom) + " " + string(global.playerTileX) + " " + string(global.playerTileY));
	playerLevel = file_text_read_real(file);
	playerXP = file_text_read_real(file);
	playerNextLevel = file_text_read_real(file);
	playerHealth = file_text_read_real(file);
	playerMaxHealth = file_text_read_real(file);
	playerDamage  = file_text_read_real(file);
	playerSpeed = file_text_read_real(file);
	file_text_close(file);
    fadeout(global.lastRoom,c_white,.05,global.playerTileX,global.playerTileY);
} 