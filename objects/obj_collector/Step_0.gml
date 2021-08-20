/// @description Insert description here

if (distance_to_object(player) <= 1*BLOCK_SIZE)
{
	var ores = player.inventory.blockSack
	for (var k = ds_map_find_first(ores); !is_undefined(k); k = ds_map_find_next(ores,k))
	{	
		if (is_undefined(storage[?k]))
			storage[?k] = ores[?k]
		else
			storage[?k] += ores[?k];
	}
}