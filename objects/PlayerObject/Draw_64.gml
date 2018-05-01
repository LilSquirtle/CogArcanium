if (room!=battle)&&(room!=pauseRoom){
	draw_set_font(font0);
	draw_text(16,8,"Health:"+string(playerHealth)+"/"+string(playerMaxHealth))
	//draw_rectangle(164,12,164+(playerMaxHealth*4),28,false);
	//var healthBar=100*playerMaxHealth;
	//draw_healthbar(164,12,164+playerHealth*4,28,playerHealth*healthBar,c_black,c_red,c_green,0,1,1);
}
else if (room==pauseRoom){

}
	