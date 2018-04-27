// Initialization
UP = 0
RIGHT = 1
DOWN = 2
LEFT = 3
lastDirection = RIGHT;
animationSpeed = 0.25;
moving = false;
minimumMove = 16;
moveRemaining = 0;
delay = 0.1;
moveAmount = 0;
tiletype = -1;
lastTiletype = -1;
walkSpeed = 10;
tilex = self.x / 32;
tiley = self.y / 32;

x = ResolvePlayerLocation(tilex);
y = ResolvePlayerLocation(tiley);
image_speed = 0;