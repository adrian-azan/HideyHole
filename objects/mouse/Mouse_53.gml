/// @description Place object from selected hotbar item


//Need to add distance from player check
with (obj_hotBar)
{
	
	var i = items[|selected].slotItem
	var xCell = floor(mouse.x/16)
	var yCell = floor(mouse.y/16)
	var occupied = ds_grid_get(obj_worldGrid.world,xCell,yCell)
	
	if (i != noone and occupied == -1)
	{
		//show_debug_message(string(xCell) + " " + string(yCell) + " " + string(occupied))
		ds_grid_set(obj_worldGrid.world,xCell,yCell, i)
		instance_create_depth(xCell*16,yCell*16,-100,i)	
		//occupied = ds_grid_get(obj_hotBar.world,xCell,yCell)
		//show_debug_message(string(xCell) + " " + string(yCell) + " " + string(occupied))
	}
}