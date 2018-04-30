playerHealth+=round(playerMaxHealth/2);
if (playerHealth>playerMaxHealth){
	playerHealth=playerMaxHealth;
	textBox("You are fully healed!");
}
else{
	textBox("You heal to "+string(playerHealth)+"!");
}
isEnemyTurn=ds_list_size(currentEnemy);
