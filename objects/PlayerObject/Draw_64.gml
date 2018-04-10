if (room!=battle)&&(room!=pauseRoom){
	draw_set_font(font0);
	draw_text(16,8,"Health:"+string(playerHealth)+"/"+string(playerMaxHealth));
	//draw_rectangle(164,12,164+(playerMaxHealth*4),28,false);
	//var healthBar=100*playerMaxHealth;
	//draw_healthbar(164,12,164+playerHealth*4,28,playerHealth*healthBar,c_black,c_red,c_green,0,1,1);
}
else if (room==pauseRoom){
	draw_rectangle(room_width*.5,room_height*.5,room_width*1.5,room_height*1.65,false);
	draw_set_color(c_black);
	draw_rectangle(room_width*.5,room_height*.5,room_width*1.5,room_height*1.65,true);
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_text(room_width*.55,room_height*.55,"Level: "+string(playerLevel));
	draw_text(room_width*.55,room_height*.75,"Exp: "+string(playerXP)+"/"+string(playerNextLevel));
	draw_text(room_width*.55,room_height*.95,"Health: "+string(playerHealth)+"/"+string(playerMaxHealth));
	draw_text(room_width*.55,room_height*1.15,"Murderocity: "+string(playerDamage));
	draw_text(room_width*.55,room_height*1.35,"Groove: "+string(playerSpeed));
	draw_set_color(c_white);
}
	