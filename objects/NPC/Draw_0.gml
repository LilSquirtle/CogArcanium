draw_self();
if speaking == true
{
	// Debug
	draw_set_font(fntNPC);
	message = messages[speak_choice];
	draw_text(x  - string_length(message) / 2, y - 12, message);
}
draw_sprite(shadowSprite, image_index, x + 9, y + 6);
draw_self();
