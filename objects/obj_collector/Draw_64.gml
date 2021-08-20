/// @description Insert description here
var i = 0;
var ores = player.inventory.blockSack
for (var k = ds_map_find_first(ores); !is_undefined(k); k = ds_map_find_next(ores, k)) 
	{
		//var xPos = display_get_gui_width() * .3
		//var yPos = display_get_gui_height()* .15
		
		//draw_text(xPos,yPos+(50*i),string(ores[?k]))
		//draw_sprite_stretched(object_get_sprite(k),-1,xPos,yPos+(50*i),32,32)
		i++;
	}