//This script is to remove an item from the inventory
var found = -1;

//check to see if the item exists
for(var i = 0; i<invMax;i++)
{
	if(inv[i,0] == argument0)//Arg0 is the item id of what we want to remove
	{
		found = i;
		break;
	}
}

if(found != -1)
{
	//If the item is found we now remove it
	inv[found,1] -= argument1;//Arg1 is the amount to remove
	if(inv[found,1] <= 0)
	{
		inv[found,0] = NOTHING;
		inv[found,1] = 0;
	}//if there is no more of the item we change the place to an empty place
}