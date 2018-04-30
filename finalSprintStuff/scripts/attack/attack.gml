var curEnemy;
attackDamage=round(playerDamage*random_range(.8,1.2));
for (i = 0;i<ds_list_size(currentEnemy);i++){
	curEnemy=ds_list_find_value(currentEnemy,i);
	if (curEnemy!=noEnemy){
		break;
	}
}
if (curEnemy!=noEnemy){
	curEnemy.enemyHealth-=attackDamage;
	if (curEnemy.enemyHealth<=0){
		textBox("You attack the "+string(curEnemy.enemyName)+" for "+string(playerDamage)+" damage!",string(curEnemy.enemyName)+" has been slain!");
		experiencePool+=curEnemy.enemyXP;
		curEnemy.visible=0;
		ds_list_set(currentEnemy,ds_list_find_index(currentEnemy,curEnemy),noEnemy);
		
	}	
	else{
		textBox("You attack the "+string(curEnemy.enemyName)+" for "+string(playerDamage)+" damage!");
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
	fightOutcome=1;
}
else{
	isEnemyTurn=ds_list_size(currentEnemy);
}
