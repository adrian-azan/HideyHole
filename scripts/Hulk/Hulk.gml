// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hulk(grid)
{
	var Hx = irandom_range(0,ds_grid_width(grid))
	var Hy = irandom_range(0,ds_grid_height(grid))
	
	var space = 0
	var spaceGoal = 20
	var endurance = 20
	var size = 1
	
	while endurance >= 0
	{
		var direct = irandom_range(0,3);
		switch (direct)
		{
			//right
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
			//ds_grid_set_region(grid,Hx,Hy,Hx+size,Hy+size,2);
			ds_grid_set(grid,Hx,Hy,2);
			
		}
		endurance--;
	}
	return grid;
}