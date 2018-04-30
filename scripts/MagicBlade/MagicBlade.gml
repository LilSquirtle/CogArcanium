//Magic Blade script

var character = argument0;
var target = argument1;

var damage1 = character.mag;
var damage2 = character.str;

target.takeDamage(damage1, DamageType.Magic);
target.takeDamage(damage2, DamageType.Physical);