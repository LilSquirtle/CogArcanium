Debug_Shortcuts();

//~*~*~*~*~*~*~Code from Trenton*~*~*~*~*~*~*~
if (!instance_exists(objectFade)){
	if(keyboard_check_pressed(ord("P"))&&(room!=pauseRoom)&&(room!=battle)){
		global.playerTileX= tilex;
		global.playerTileY = tiley;
		moving = false;
		fadeout(pauseRoom,c_white,.05,x,y);
	}
	if(keyboard_check_pressed(ord("P"))&&(room==pauseRoom)){
		global.playerTileX= tilex;
		global.playerTileY = tiley;
		moving = false;
		fadeout(Overworld,c_white,.05,x,y);
	}
}
if(moving && !instance_exists(objectFade))
{
	var rng = irandom(steps);
	if((rng == steps) && (steps <= 850))
	{
		global.playerTileX= tilex;
		global.playerTileY = tiley;
		global.lastRoom = room;
		moving = false;
		fadeout(battle,c_white,.025,x,y);
		
		steps = 1000;
	}
	else
	{
		steps--;
	}
}
//~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*

dt = delta_time / 1000000;

if(delay > 0)
{
	delay -= dt;
	return;
}

layerID = layer_get_id("CollisionTiles");
mapID = layer_tilemap_get_id(layerID);

if(moving)
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
		sprite_index = PlayerWalkUpSprite;
		lastDirection = UP;
		moving = true;
		moveAmount = 0;
		tiley -= 1;
	}
	else if(keyboard_check(vk_down))
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = PlayerWalkDownSprite;
		lastDirection = DOWN;
		moving = true;
		moveAmount = 0;
		tiley += 1;
	}
	else if(keyboard_check(vk_right))
	{
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = PlayerWalkRightSprite;
		lastDirection = RIGHT;
		moving = true;
		moveAmount = 0;
		tilex += 1;
	}
	else if(keyboard_check(vk_left))
	{	
		moveRemaining = minimumMove;
		image_speed = animationSpeed;
		sprite_index = PlayerWalkLeftSprite;
		lastDirection = LEFT;
		moving = true;
		moveAmount = 0;
		tilex -= 1;
	}	
	else if(keyboard_check(vk_nokey))
	{
		image_speed = 0;
		switch(lastDirection)
		{
			case RIGHT:
				sprite_index = PlayerIdleRightSprite;
				break;
			case LEFT:
				sprite_index = PlayerIdleLeftSprite;
				break;
			case UP:
				sprite_index = PlayerIdleUpSprite;
				break;
			case DOWN:
				sprite_index = PlayerIdleDownSprite;
				break;
		}
		x = ResolvePlayerLocation(tilex);
		y = ResolvePlayerLocation(tiley);
	}
}

tiletype = GetTileType(mapID, ResolvePlayerLocation(tilex), ResolvePlayerLocation(tiley));

if(lastTiletype >= 0 && lastTiletype != tiletype)
{
	if(tiletype == LOCATION1)
	{
		if(room == cave_north_main)
		{		
			global.playerTileX = 105;
		
		global.playerTileY = 8;
		}
		moving = false;
		room_goto(Overworld);
	}
	else if(tiletype == LOCATION2)
	{
		if(room == Overworld)
		{
			global.playerTileX = 12;
			global.playerTileY = 45;
		}
		else if(room == cave_north_lower)
		{
			global.playerTileX = 42;
			global.playerTileY = 20;
		}
		else
		{
			global.playerTileX = 5;
			global.playerTileY = 6;
		}
		moving = false;
		room_goto(cave_north_main);
	}
	else if(tiletype == LOCATION3)
	{
		global.playerTileX = 9;
		global.playerTileY = 10;
		moving = false;
		room_goto(cave_north_lower);
	}
	else if(tiletype == LOCATION4)
	{
		global.playerTileX = 9;
		global.playerTileY = 10;
		moving = false;
		room_goto(cave_north_lower);
	}
}
lastTiletype = tiletype;

camera_set_view_pos(view_camera[0], x - 240 / 2, y - 160 / 2);


//open pauseMenu + saves player position
//if(keyboard_check_pressed(ord("P")) && (room == Overworld)) 
//{
//	global.prevX = x/16;
//	global.prevY = y/16;
//	room_goto(pauseRoom);
//}