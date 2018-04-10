draw_set_halign(fa_left);
draw_set_color(c_black);
draw_set_alpha(.7);
draw_roundrect(200,600,800,700,false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_roundrect(200,600,800,700,true);
draw_set_font(font1);
draw_text_ext(220,612,message_draw,28,500);

