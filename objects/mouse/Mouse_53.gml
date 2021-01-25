/// @description Insert description here



with (obj_hotBar)
{
	
	var i = items[|selected].slotItem
	var xCell = floor(mouse.x/16)
	var yCell = floor(mouse.y/16)
	var occupied = ds_grid_get(obj_hotBar.world,xCell,yCell)
	
	if (i != noone and occupied == false )
	{
		ds_grid_set(obj_hotBar.world,xCell,yCell, true)
		instance_create_depth(xCell*16,yCell*16,-100,i)	
		show_debug_message(string(xCell) + " " + string(yCell) + " " + string(occupied))
	}
}