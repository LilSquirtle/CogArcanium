if (!instance_exists(objectTextBox)){
	playerXP-=playerNextLevel;
	playerNextLevel*=2;
	playerLevel+=1;
	playerDamage+=round(random_range(1,4));
	playerMaxHealth+=round(random_range(0,2)*10)+1;
	playerHealth=playerMaxHealth;
	textBox("You are now level "+string(playerLevel)+"!","Your Health is now "+string(playerMaxHealth)+"!","Your murderocity is now "+string(playerDamage)+"!");
}
if (playerNextLevel>playerXP){
	isLevelUp=0;
}