
enum DamageType{ Physical, Magic }

if(!global.AbilityCost){
	global.AbilityCost = ds_map_create();
	ds_map_add(global.AbilityCost, Uppercut, 2);
	ds_map_add(global.AbilityCost, Fireball, 2);
	ds_map_add(global.AbilityCost, Heal, 3);
	ds_map_add(global.AbilityCost, Focus, 3);
	ds_map_add(global.AbilityCost, DefenseBoost, 3);
	ds_map_add(global.AbilityCost, MagicBlade, 2);
	ds_map_add(global.AbilityCost, MegatonHit, 4);
	ds_map_add(global.AbilityCost, Firestorm, 4);
	ds_map_add(global.AbilityCost, Amplify, 3);
	ds_map_add(global.AbilityCost, CrystalMissile, 5);
}
