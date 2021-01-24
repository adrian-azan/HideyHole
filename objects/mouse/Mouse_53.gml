/// @description Insert description here



with (obj_hotBar)
{
	
	var i = items[|selected].slotItem
	if (i != noone)
	{
		instance_create_depth(floor(mouse.x/16)*16,floor(mouse.y/16)*16,-100,i)	
	}
}