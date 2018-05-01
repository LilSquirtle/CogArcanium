// Initialization
randomize()
UP = 0
RIGHT = 1
DOWN = 2
LEFT = 3
lastDirection = RIGHT;
animationSpeed = 0.25;
moving = false;
minimumMove = 16;
moveRemaining = 0;
delay = irandom(10);
moveAmount = 0;
tiletype = -1;
lastTiletype = -1;
walkSpeed = 1 + irandom(1);
move_choice =  irandom(4);
speaking = false;
speak_choice = irandom(5);

tilex = self.xstart / 16;
tiley = self.ystart / 16;
x = ResolvePlayerLocation(tilex);
y = ResolvePlayerLocation(tiley);
image_speed = 0;

var sprites;
var messages;