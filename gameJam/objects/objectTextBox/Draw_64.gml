/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_set_alpha(.7);
draw_roundrect(100,320,540,420,false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_roundrect(100,320,540,420,true);
draw_set_font(font1);
draw_text_ext(120,332,message_draw,28,380);

