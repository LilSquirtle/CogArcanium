//this script is to use the effect of a consumable item. (only has tonic usage right now)
//STILL IN PROGRESS 
for(var i = 0; i < invMax; i++)
{
	if(inv[i,0] == argument0 && argument0 == HP_POTION)
	{
		if(playerHealth < playerMaxHealth)
		{
			inv_remove(HP_POTION,1);
			playerHealth += item[HP_POTION,EFFECT];
			if(playerHealth > playerMaxHealth)
			{
				playerHealth = playerMaxHealth;
			}
			break;
		}
	}
}

