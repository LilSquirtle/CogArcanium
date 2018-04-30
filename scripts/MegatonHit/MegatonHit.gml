//Magic Blade script

var character = argument0;
var target = argument1;

var damage2 = character.str * 3;

target.takeDamage(damage2, DamageType.Physical);