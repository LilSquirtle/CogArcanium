var midpoint=round(ds_list_size(currentEnemy)/2.1);
for (i=0;i<ds_list_size(currentEnemy);i++){
	instance_create_depth(room_width/2+64*i-64*midpoint,room_height/2,0,ds_list_find_value(currentEnemy,i));
}
textBox("Enemies have appeared! Murder them violently!");
instance_create_depth(x,y,0,objectArrow);