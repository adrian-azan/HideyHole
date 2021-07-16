/// @description Create World Grid
if (DEBUG.debug) show_debug_message("WORLD CREATOR DESTROYED")

var worldGrid = instance_create_depth(room_width* 7/8,0,0,obj_worldGrid);
worldGrid.world = world;

worldGrid.height = height;
worldGrid.width = width;
worldGrid.blockSize = 8