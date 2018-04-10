/// @description Insert description here
// You can write your code in this editor

draw_set_font(font0);
draw_set_color(c_black);
draw_text(16,8,"Health:"+string(playerHealth)+"/"+string(playerMaxHealth));
	
if (!instance_exists(objectTextBox))&&(endFight==0){
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_roundrect(100,320,540,420,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_roundrect(100,320,540,420,true);
	draw_set_font(font1);
	draw_text_ext(120,332,"Attack     Heal         Run Away",28,380);
}