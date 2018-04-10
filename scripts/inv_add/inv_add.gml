// This script will add items to the inventory

var found = -1;
//check to see if the item already exists
for(var i = 0; i < invMax; i++)
{
	if(inv[i,0] == argument0)
	{
		found = i;// item has been found
		break;
	}
}

//if it doesn't exist
if(found == -1)
{
	//Check if there is an empty place to add the item
	for(var i = 0; i < invMax; i++)
	{
		if(inv[i,0] == NOTHING)
		{
			found = i;
			break;
		}
	}	
}

//adding the item to the place (found)
inv[found,0] = argument0;//Arg0 is the id
inv[found,1] += argument1;//arg1 is the amount of the item to add
