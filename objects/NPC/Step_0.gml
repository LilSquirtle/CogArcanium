Debug_Shortcuts();

if distance_to_object(PlayerObject) < 11
{
	speaking = true;
	move_choice = 4;
}
else
{
	if speaking == true
	{
		randomize();
		speak_choice = irandom(5);
		speaking = false;
		delay = irandom(2);
	}
	
}

dt = delta_time / 1000000;

if(delay > 0)
{
	delay -= dt;
}
else
{
	randomize()
	delay = irandom(10);
	if speaking == false
	{
		move_choice = irandom(4);
	}
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
	if(move_choice == UP)
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprites[0];
		lastDirection = UP;
		moving = true;
		moveAmount = 0;
		tiley -= 1;
	}
	else if(move_choice == DOWN)
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprites[1];
		lastDirection = DOWN;
		moving = true;
		moveAmount = 0;
		tiley += 1;
	}
	else if(move_choice == RIGHT)
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprites[2];
		lastDirection = RIGHT;
		moving = true;
		moveAmount = 0;
		tilex += 1;
	}
	else if(move_choice == LEFT)
	{	
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = sprites[3];
		lastDirection = LEFT;
		moving = true;
		moveAmount = 0;
		tilex -= 1;
	}	
	if(move_choice == 4)
	{
		image_speed = 0;
		switch(lastDirection)
		{
			case RIGHT:
				sprite_index = sprites[4];
				break;
			case LEFT:
				sprite_index = sprites[5];
				break;
			case UP:
				sprite_index = sprites[6];
				break;
			case DOWN:
				sprite_index = sprites[7];
				break;
		}
	}
}

tiletype = GetTileType(mapID, ResolvePlayerLocation(tilex), ResolvePlayerLocation(tiley));
lastTiletype = tiletype;
