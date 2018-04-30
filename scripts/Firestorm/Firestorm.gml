//Firestorm script

var character = argument0;
var target = argument1;

var damage2 = character.mag * 3;

target.takeDamage(damage2, DamageType.Magic);