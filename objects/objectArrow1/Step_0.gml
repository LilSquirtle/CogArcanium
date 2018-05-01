/// @description Insert description here
// You can write your code in this editor
get_input();
moveArrow();
if (room!=battle){
	instance_destroy();
}
if (!instance_exists(objectTextBox))&&(isEnemyTurn>=1){
	enemyTurn();
}
if (!instance_exists(objectTextBox))&&(fightOutcome!=0){
	winScreen(fightOutcome);
}

if (!instance_exists(objectTextBox))&&(isLevelUp==1){
	levelUp();
}
if (!instance_exists(objectTextBox))&&(endFight==1)&&(isLevelUp=0){
	fadeout(room0,c_white,.05,objectPlayer.x,objectPlayer.y);
}