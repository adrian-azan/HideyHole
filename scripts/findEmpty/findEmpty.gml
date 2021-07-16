// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findEmpty(inventory)
{
	for (var i = 0; i < ds_list_size(inventory); i++)
	{
		if (inventory[|i].slotItem == noone)
			return i;
	}
	
	return -1;
}