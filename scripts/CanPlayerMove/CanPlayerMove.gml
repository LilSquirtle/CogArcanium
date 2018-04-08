tx = argument0;
ty = argument1;
dir = argument2;

JUMPLEFT = 2;
JUMPUP = 3;
JUMPRIGHT = 6;
JUMPDOWN = 7;

px = ResolvePlayerLocation(tx);
py = ResolvePlayerLocation(ty);

tiletype = GetTileType(layer_tilemap_get_id(layer_get_id("CollisionTiles")), px, py);

if(tiletype == JUMPLEFT && dir == LEFT)
{
	return true;
}
else if(tiletype == JUMPRIGHT && dir == RIGHT)
{
	return true;
}
else if(tiletype == JUMPUP && dir == UP)
{
	return true;
}
else if(tiletype == JUMPDOWN && dir == DOWN)
{
	return true;
}
else if(tiletype != 0)
{
	return false;
}

return true;