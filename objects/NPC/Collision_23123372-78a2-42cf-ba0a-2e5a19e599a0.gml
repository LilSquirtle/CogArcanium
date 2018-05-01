// behave differently after touching another NPC
bounce = irandom(1);
if bounce == 0
{
	move_choice += 1;
	if move_choice > 4
	{
		move_choice = 0;
	}
	delay = irandom(4);
}
else
{
	move_choice -= 1;
	if move_choice < 0
	{
		move_choice = 4;
	}
	delay = irandom(4);
}