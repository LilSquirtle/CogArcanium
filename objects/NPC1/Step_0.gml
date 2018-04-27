Debug_Shortcuts();

dt = delta_time / 1000000;

if(delay > 0)
{
	delay -= dt;
	return;
}

layerID = layer_get_id("CollisionTiles");
mapID = layer_tilemap_get_id(layerID);

if(moving && !instance_exists(objectFade))
{
	if(!CanPlayerMove(tilex, tiley, lastDirection))
	{
		moveAmount = 1;
		switch(lastDirection)
		{
			case RIGHT:
				tilex -= 1;
				break;
			case LEFT:
				tilex += 1;
				break;
			case UP:
				tiley += 1;
				break;
			case DOWN:
				tiley -= 1;
				break;
		}		
	}
	switch(lastDirection)
	{	
		case RIGHT:	
			moveAmount += walkSpeed * dt;
			if(moveAmount >= 1)
			{
				moveAmount = 1;
				moving = false;
			}			
			x = lerp(ResolvePlayerLocation(tilex - 1), ResolvePlayerLocation(tilex), moveAmount);
			break;
		case LEFT:
			moveAmount += walkSpeed * dt;
			if(moveAmount >= 1)
			{
				moveAmount = 1;
				moving = false;
			}			
			x = lerp(ResolvePlayerLocation(tilex + 1), ResolvePlayerLocation(tilex), moveAmount);
			break;
		case UP:
			moveAmount += walkSpeed * dt;
			if(moveAmount >= 1)
			{
				moveAmount = 1;
				moving = false;
			}			
			y = lerp(ResolvePlayerLocation(tiley + 1), ResolvePlayerLocation(tiley), moveAmount);
			break;
		case DOWN:
			moveAmount += walkSpeed * dt;
			if(moveAmount >= 1)
			{
				moveAmount = 1;
				moving = false;
			}			
			y = lerp(ResolvePlayerLocation(tiley - 1), ResolvePlayerLocation(tiley), moveAmount);
			break;
	}
}
else
{
	if(keyboard_check(vk_up))
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprNPC1_WalkUp;
		lastDirection = UP;
		moving = true;
		moveAmount = 0;
		tiley -= 1;
	}
	else if(keyboard_check(vk_down))
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprNPC1_WalkDown;
		lastDirection = DOWN;
		moving = true;
		moveAmount = 0;
		tiley += 1;
	}
	else if(keyboard_check(vk_right))
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprNPC1_WalkRight;
		lastDirection = RIGHT;
		moving = true;
		moveAmount = 0;
		tilex += 1;
	}
	else if(keyboard_check(vk_left))
	{	
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprNPC1_WalkLeft;
		lastDirection = LEFT;
		moving = true;
		moveAmount = 0;
		tilex -= 1;
	}	
	if(keyboard_check(vk_nokey))
	{
		image_speed = 0;
		switch(lastDirection)
		{
			case RIGHT:
				sprite_index = sprNPC1_IdleRight;
				break;
			case LEFT:
				sprite_index = sprNPC1_IdleLeft;
				break;
			case UP:
				sprite_index = sprNPC1_IdleUp;
				break;
			case DOWN:
				sprite_index = sprNPC1_IdleDown;
				break;
		}
	}
}

tiletype = GetTileType(mapID, ResolvePlayerLocation(tilex), ResolvePlayerLocation(tiley));
lastTiletype = tiletype;



