/// @description Insert description here
// You can write your code in this editor
enum stats{
	health,
	mana,
	strength,
	speed,
	magic,
	defense,
	resist
}
e_map = ds_map_create();
//key = enemy name
//value = list of modifiers, accessed using above enum
//example: e_map["Name"][stats.health];
e_map[?"Goblin"] = [1,1,1,1,1,1,1];