//This script will show our inventory
//needs called in a draw event

for(var j = 0; j < invMax; j++)
{
	draw_text(10,13*j,string(item[inv[j,0],NAME]) + " x " + string(inv[j,1]));
	//inv[j,0] represents the item id
}