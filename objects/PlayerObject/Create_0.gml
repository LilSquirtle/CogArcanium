//~*~*~*~*~*~*~Code from Trenton*~*~*~*~*~*~*~
hspd = 0;
vspd = 0;
//len = 0;
//state = move_state();
playerStats();
face = 0;
steps = 400;
global.lastRoom = room;
globalvar currentEnemy;
currentEnemy = slime;
//~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*

image_speed = 0;
walkSpeed = 10;
//Directions
UP = 0
RIGHT = 1
DOWN = 2
LEFT = 3
lastDirection = RIGHT;
animationSpeed = 0.25;

window_set_size(1200, 800);
moving = false;
minimumMove = 16;
moveRemaining = 0;

tilex = global.playerTileX;
tiley = global.playerTileY;

x = ResolvePlayerLocation(tilex);
y = ResolvePlayerLocation(tiley);
camera_set_view_pos(view_camera[0], x - 240 / 2, y - 160 / 2);
delay = 0.1;

moveAmount = 0;

tiletype = -1;
lastTiletype = -1;

//Locations
LOCATION1 = 8;
LOCATION2 = 9;
LOCATION3 = 10;
LOCATION4 = 11;
LOCATION5 = 12;
LOCATION6 = 13;
LOCATION7 = 14;
LOCATION8 = 15;

