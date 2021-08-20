// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function placePlayer(grid)
{
	
	var top = ds_grid_height(grid)*.1
	var bottom = ds_grid_height(grid)*.3
	var right = ds_grid_width(grid) *.8
	var left = ds_grid_width(grid) * .2
	
	var xPos = floor(random_range(left,right))
	var yPos = floor(random_range(top,bottom))
	
	ds_grid_set_region(grid,xPos-4,yPos-1,xPos+6,yPos+6,DIRT)
	ds_grid_set_region(grid,xPos-5,yPos,xPos+5,yPos+5,AIR)
	ds_grid_set(grid,xPos+2,yPos+5,SPAWN)
	
	return [xPos*BLOCK_SIZE,yPos*BLOCK_SIZE];
}