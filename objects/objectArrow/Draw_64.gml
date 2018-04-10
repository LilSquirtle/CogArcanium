draw_set_font(font0);
draw_set_color(c_black);
draw_text(16,8,"Health:"+string(playerHealth)+"/"+string(playerMaxHealth));
	
if (!instance_exists(objectTextBox))&&(endFight==0){
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_roundrect(200,600,800,700,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_roundrect(200,600,800,700,true);
	draw_set_font(font1);
	draw_text_ext(220,612,"Attack     Heal         Run Away",28,500);
}