/// @description Move Miner, Place Block

var direct = irandom_range(0,3);

switch (direct)
{
	case 0:
		Hx += size
		break;
	case 1:
		Hy += size
		break;
	case 2:
		Hx -= size
		break;
	case 3:
		Hy -= size
		break;
}
	if (Hx >0 and Hx < ds_grid_width(grid)-size and
		Hy >0 and Hy < ds_grid_height(grid)-size)
	{				
		ds_grid_set_region(grid,Hx,Hy,Hx+size-1,Hy+size-1,blockID);			
	}
	endurance--;

if (endurance <= 0) 
{	
	if (DEBUG.debug) show_debug_message("DESTROYED " + string(blockID))
	instance_destroy();
}
else
	alarm_set(0,delay);