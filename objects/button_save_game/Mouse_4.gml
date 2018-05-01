var file;
file = file_text_open_write(working_directory + "\level.txt");
file_text_write_string(file, string(global.lastRoom) + " " + string(global.playerTileX) + " " + string(global.playerTileY) + "\n");
file_text_write_string(file, string(global.playerLevel) + " " + string(global.playerXP) + " " + string(global.playerNextLevel) + "\n");
file_text_write_string(file, string(global.playerHealth) + " " + string(global.playerMaxHealth) + " " + string(global.playerDamage) + " " + string(global.playerSpeed));
file_text_close(file);