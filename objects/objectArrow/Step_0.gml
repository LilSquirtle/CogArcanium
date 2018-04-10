get_input();
moveArrow();
Debug_Shortcuts();

if (room!=battle){
	instance_destroy();
}
if (!instance_exists(objectTextBox))&&(isEnemyTurn==1){
	enemyTurn();
}
if (!instance_exists(objectTextBox))&&(fightOutcome!=0){
	winScreen(fightOutcome);
}

if (!instance_exists(objectTextBox))&&(isLevelUp==1){
	levelUp();
}
if (!instance_exists(objectTextBox))&&(endFight==1)&&(isLevelUp=0){
	fadeout(Overworld,c_white,.05, global.prevX, global.prevY);
}