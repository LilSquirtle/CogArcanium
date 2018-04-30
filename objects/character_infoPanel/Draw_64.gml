draw_set_color(c_white);
draw_rectangle(16,16,256,180,false);
//draw_rectangle(room_width*.5,room_height*.5,room_width*1.5,room_height*1.65,false);
draw_set_color(c_black);
draw_rectangle(16,16,256,180,true);
//draw_rectangle(room_width*.5,room_height*.5,room_width*1.5,room_height*1.65,true);
draw_set_font(font0);
draw_text(20,20,"Level: "+string(playerLevel));
draw_text(20,52,"Exp: "+string(playerXP)+"/"+string(playerNextLevel));
draw_text(20,84,"Health: "+string(playerHealth)+"/"+string(playerMaxHealth));
draw_text(20,116,"Murderocity: "+string(playerSpeed));
draw_text(20,148,"Groove: "+string(playerSpeed));
	