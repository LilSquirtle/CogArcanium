
attackDamage=round(playerDamage*random_range(.8,1.2));
currentEnemy.enemyHealth-=attackDamage;
textBox("You attack the slime for "+string(playerDamage)+" damage!");

if (currentEnemy.enemyHealth<=0){
	fightOutcome=1;;
}
else{
	isEnemyTurn=1;
}
	