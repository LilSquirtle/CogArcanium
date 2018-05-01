
isEnemyTurn-=1;
curEnemy=ds_list_find_value(currentEnemy,isEnemyTurn);
if (curEnemy!=noEnemy){
	runChance=random_range(1,100);
	if (curEnemy.fear>runChance){
		textBox("The "+string(curEnemy.enemyName)+" ran away! Dang!");

		curEnemy.visible=0;
		ds_list_set(currentEnemy,isEnemyTurn,noEnemy);
	}
	else{
		playerHealth-=curEnemy.enemyAttack;
		textBox("The "+string(curEnemy.enemyName)+" attacks you!","You take "+string(curEnemy.enemyAttack)+" damage!");
		if (playerHealth<=0){
			fightOutcome=4;
		}
	}
}
var enemyCount=0;

for (i = 0;i<ds_list_size(currentEnemy);i++){
	curEnemy=ds_list_find_value(currentEnemy,i);
	if (curEnemy!=noEnemy){
		enemyCount+=1;
	}
}
if (enemyCount==0){
	fightOutcome=3;
}
else if (isEnemyTurn==0){
	playerTurn=1;
}
