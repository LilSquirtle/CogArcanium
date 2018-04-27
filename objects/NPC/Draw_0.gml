draw_self();
if speaking
{
	// Debug
	draw_set_font(fntNPC);
	draw_text(x - 22, y - 12, "S u p  d u d e !");
}
draw_sprite(shadowSprite, image_index, x + 9, y + 6);
draw_self();
