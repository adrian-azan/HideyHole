// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function diffusion(grid,noise)
{
	var limit = 5
	var generation = 0
	var width = ds_grid_width(grid)
	var height = ds_grid_height(grid)
	var next = ds_grid_create(width,height)
	restart(grid,80)
	
	while (generation < limit)
	{
		
		for (var i = 0; i < height; i ++)
		{
			for (var j =0; j < width; j++)
			{
				var sum = ds_grid_get_sum(grid,i-1,j-1,i+1,j+1)
				sum -= ds_grid_get(grid,i,j)
				
				if sum >= 6 //sum >= 6
					ds_grid_set(next,i,j,1)
				else if sum == 3
				{
					var val = ds_grid_get(grid,i,j)
					ds_grid_set(next,i,j,val)
				}
				else
					ds_grid_set(next,i,j,0)
			}
		}
		
		
		
		ds_grid_copy(grid,next)
		ds_grid_clear(next,1)
		generation++
	}
	
	
	//CREATES STONE LAYER
	for(var row =0; row < height; row++)
	{
		for (var col = 0; col < width; col++)
		{
			var cell = ds_grid_get(grid,col,row)
			
			if (row > height/2 and cell == 1)
				ds_grid_set(grid,col,row,3);
		}
	}
	
	
	return grid;
}

function restart(grid,noise)
{
	var width = ds_grid_width(grid)
	var height = ds_grid_height(grid)
	for (var i = 0; i < height;i++)
	{
		for (var j = 0; j < width; j++)
		{
			var chance = random_range(0,100)
			if chance >= noise
				ds_grid_set(grid,i,j,0)
			else
				ds_grid_set(grid,i,j,1)
		}
	}
}
	