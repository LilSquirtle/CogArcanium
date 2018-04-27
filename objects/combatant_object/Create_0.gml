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
//[health,mana,strength,speed,magic,defense,resist]
e_map[?"Goblin"] = [1,0.5,0.7,1.2,0.5,0.6,0.2];
e_map[?"Skeleton"] = [0.4,1,0.6,1.5,1,1.5,0.3];
e_map[?"Slime"] = [0.5,0.3,0.3,0.3,0.3,1,1];