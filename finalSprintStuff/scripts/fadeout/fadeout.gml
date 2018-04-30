///@desc fadeout(room,fadeColor,fadeSpeed,x,y)
///@arg room
///@arg fadeColor
///@arg fadeSpeed
///@arg x
///@arg y
var fade=instance_create_depth(x,y,0,objectFade);
fade.target=argument0;
fade.image_alpha=0;
fade.fadeColor=argument1;
fade.fadeSpeed=argument2;
fade.xx=argument3;
fade.yy=argument4;