// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findItem(inventory,itemIndex)
{
	for (var i = 0; i < ds_list_size(inventory); i++)
	{
		if (inventory[|i].slotItem == itemIndex)
			return i;
	}
	
	return -1;
}