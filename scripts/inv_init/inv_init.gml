//This script will initialize the inventory

globalvar inv, invMax; //inv = the inventory array, invMax = max items

invMax = 10; //max amount of items we can hold

//initialize the inv array
for(var i = 0; i<invMax;i++)
{
	inv[i,0] = 0; //This is the item id, every item has its id in the inv_data_items
	inv[i,1] = 0;//This is the amount of the current item being held
}

