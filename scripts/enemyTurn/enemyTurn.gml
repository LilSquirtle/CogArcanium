isEnemyTurn=0;
runChance=random_range(1,100);
if (currentEnemy.fear>runChance){
	fightOutcome=3;
}
else{
	playerHealth-=currentEnemy.enemyAttack;
	textBox("The "+string(currentEnemy.enemyName)+" attacks you!","You take "+string(currentEnemy.enemyAttack)+" damage!");
	if (playerHealth<=0){
		fightOutcome=4;
	}
	else{
		playerTurn=1;
	}
}