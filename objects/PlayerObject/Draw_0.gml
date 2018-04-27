///@description adds shadow under player
draw_self();
if (room!=battle)&&(room!=pauseRoom){
	draw_sprite(shadowSprite,image_index,x,y-8);
	draw_self();
}