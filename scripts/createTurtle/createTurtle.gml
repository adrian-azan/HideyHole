// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createTurtle(veinSize,blockType,depthPercentage)
{
	depthPercentage /= 100;
	var newTurtle = instance_create_depth(0,0,-100,Turtle);
	
	with (newTurtle)
	{		
		Hx = irandom_range(0,ds_grid_width(grid))
		Hy = irandom_range(depthPercentage*ds_grid_height(grid),ds_grid_height(grid))

		endurance = veinSize
		size = 1
		
		blockID = blockType;

		
	}
	return newTurtle;
}