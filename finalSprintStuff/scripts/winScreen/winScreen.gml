///@desc winScreen(victory)
///@arg victory
var win=argument0;
if (win==1){
	textBox("You won the fight!","You gain "+string(experiencePool)+" experience!");
	playerXP+=experiencePool;
	if (playerXP>=playerNextLevel){
		isLevelUp=1;
	}
}
else if (win==2){
	textBox("You ran away like a complete loser!","Congratulations!","You are bad at video games!","Hooray");
}
else if (win==3){
	textBox("They all ran away!", "That is the complete opposite of what you wanted!");
}
else if (win==4){
	textBox("You got murderified!","Wow you're bad at this...",".....",".....","...well I didn't account for a death state...","You are now suddenly healed to full!");
	playerHealth=playerMaxHealth;
}
fightOutcome=0;
for (i =0;i<ds_list_size(currentEnemy);i++){
	instance_destroy(ds_list_find_value(currentEnemy,i));
}
endFight=1;