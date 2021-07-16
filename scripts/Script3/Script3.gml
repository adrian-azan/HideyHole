// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fillTest(grid,x,y,w,h)
{
	ds_grid_set_region(grid,x,y,x+w-1,y+h-1,1);
	for (var i =x; i < x+w;i++)
	{
		for (var j = y; j < y+h;j++)
		{
			instance_create_depth(i*8,j*8,-100,obj_dirt)
		}
	}
	

}