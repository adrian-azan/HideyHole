monitor1X = 1500
monitor1Y = 30

monitor2X = 650
monitor2Y = 30

debug = false;

#macro AIR 0
#macro DIRT 1
#macro COAL 2
#macro STONE 3
#macro IRON 4

#macro BLOCK_SIZE 8

global.recipes = ds_map_create()

global.recipes[?obj_dirt_ladder] = ds_map_create()
global.recipes[?obj_dirt_ladder][?obj_dirt] = 5;
global.recipes[?obj_dirt_ladder][?"output"] = 10;

global.recipes[?obj_torch] = ds_map_create()
global.recipes[?obj_torch][?obj_dirt] = 2;
global.recipes[?obj_torch][?obj_coal] = 1;
global.recipes[?obj_torch][?"output"] = 5;



//random_set_seed(current_time)
random_set_seed(current_time)
window_set_position(monitor2X,monitor2Y)


var grid = obj_worldCreator.world
obj_worldCreator.debug = true

grid = diffusion(grid,80)

//Coal generators
for (var i = 0; i < 20;i++)
{
	createTurtle(20,COAL,1);
	createTurtle(5, IRON,50);
	//createTurtle()
}

//fillTest(grid,1,1,10,10)








