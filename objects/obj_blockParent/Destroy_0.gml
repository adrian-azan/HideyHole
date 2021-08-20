/// @description Insert description here

if (breaker == noone) exit;

var sack = breaker.inventory.blockSack


if (ds_map_exists(sack,object_index))
	sack[?object_index] += 1;
else
	ds_map_add(sack,object_index,1);

