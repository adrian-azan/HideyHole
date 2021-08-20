/// @description Insert description here
/*
if (distance_to_object(player) > 3*BLOCK_SIZE)
{
	with (craftingList)
		event_user(1)
}
else
{
	with (craftingList)
		event_user(0)
}
*/



if (craftSignal != noone)
{
		var ores = player.inventory.blockSack		
		
		for (var k = ds_map_find_first(ores); !is_undefined(k);
			k = ds_map_find_next(ores,k))
		{
			var amount = global.recipes[?craftSignal][?k]
			if (!is_undefined(amount))
				ores[?k] -= amount;					
		}
	
			
		var inventory = player.inventory.inventory
		var hotbar = player.inventory.hotbar
		var i = findItem(inventory,craftSignal)
		var hi = findItem(hotbar,craftSignal)
		if ( i != -1)
			inventory[|i].itemQuantity += global.recipes[?craftSignal][?"output"]
		else if (hi != -1)
			hotbar[|hi].itemQuantity += global.recipes[?craftSignal][?"output"]
		else
		{
			var i = findEmpty(inventory)
			var hi = findEmpty(hotbar)
			if ( i != -1)
			{
				inventory[|i].itemQuantity = global.recipes[?craftSignal][?"output"]
				inventory[|i].slotItem = craftSignal;
			}
			else if (hi != -1)
			{
				hotbar[|hi].itemQuantity = global.recipes[?craftSignal][?"output"]
				hotbar[|hi].slotItem = craftSignal;
			}
		}
			
			
		
		
	craftSignal = noone
}