/// @description Spawn tiles

if (instance_exists(Turtle))exit;

if (DEBUG.debug) show_debug_message("CREATING")

placePlayer(world)
for (var row = 0; row < ds_grid_height(world); row ++)
{
	for (var col = 0; col < ds_grid_width(world); col ++)
	{
		var spot = ds_grid_get(world,col,row)		
		var xCell = col*8;
		var yCell = row * 8
		if (spot == STONE )
			instance_create_depth(xCell,yCell,-100,obj_stone)
		else if (spot == DIRT)
			instance_create_depth(xCell,yCell,-100,obj_dirt)
		else if (spot == COAL)
			instance_create_depth(xCell,yCell,-100,obj_coal)
		else if (spot == IRON )
			instance_create_depth(xCell,yCell,-100,obj_iron)			
		else if (spot == SPAWN)
			instance_create_depth(xCell,yCell,-100,obj_player)
		
	
	}	
}


instance_destroy();