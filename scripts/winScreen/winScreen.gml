///@desc winScreen(victory)
///@arg victory
var win=argument0;
currentEnemy.image_alpha=0;
if (win==1){
	textBox("You won the fight!","You gain "+string(currentEnemy.enemyXP)+" experience!");
	playerXP+=currentEnemy.enemyXP;
	if (playerXP>=playerNextLevel){
		isLevelUp=1;
	}
}
else if (win==2){
	textBox("You ran away like a complete loser!");
}
else if (win==3){
	textBox("The "+string(currentEnemy.enemyName)+" ran away!", "That is the complete opposite of what you wanted!");
}
else if (win==4){
	textBox("You got murderified!","Wow you're bad at this...",".....",".....","...well I didn't account for a death state...","You are now suddenly healed to full!");
	playerHealth=playerMaxHealth;
}
fightOutcome=0;
instance_destroy(currentEnemy);
endFight=1;