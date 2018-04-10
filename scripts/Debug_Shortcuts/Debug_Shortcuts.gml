//debugging
if(keyboard_check_pressed(vk_alt))
{
	show_debug_message("x: " + string(x) + " y: " + string(y));
}

//exit game
else if(keyboard_check_pressed(vk_escape)) game_end();

//Andrew's debugging thing, but instead of space, it's ctrl
else if(keyboard_check(vk_control))
{
	show_debug_message(GetTileType(mapID, mouse_x, mouse_y));
}

//type-y type-y
if(keyboard_string == "cave_north_lower")
{
	room_goto(cave_north_lower);
	keyboard_string = "";
}
else if(keyboard_string == "cave_north_main")
{
	room_goto(cave_north_main);
	keyboard_string = "";
}
else if(keyboard_string == "main_area")
{
	room_goto(MainArea_Loc1);
	keyboard_string = "";
}
else if(keyboard_string == "cave_loc")
{
	room_goto(Cave_Loc2);
	keyboard_string = "";
}
else if(keyboard_string == "cave_home")
{
	room_goto(cave_home_in_a_hole);
	keyboard_string = "";
}
else if(keyboard_string == "cave_next")
{
	room_goto(cave_north_next);
	keyboard_string = "";
}
else if(keyboard_string == "cave_secret")
{
	room_goto(cave_secret);
	keyboard_string = "";
}