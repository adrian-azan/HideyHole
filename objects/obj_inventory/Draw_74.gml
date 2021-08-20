/// @description Draw Hotbar
var dim = 64

if (showInventory)
{
	var i = 1;
	var dim = 32
	
	var xPos = display_get_gui_width() * .01
	var yPos = display_get_gui_height()*.3
	
	var xText = display_get_gui_width() * .05
	var yText = display_get_gui_height()*.3
	
	draw_set_color(c_olive)
	draw_rectangle(xPos-10,yPos,xPos+80,yPos+50+(ds_map_size(blockSack)*48),false)
	draw_set_color(c_white)
	draw_text(xPos,yPos,string("Ore Sack"))
	for (var k = ds_map_find_first(blockSack); !is_undefined(k); k = ds_map_find_next(blockSack, k)) 
	{
		draw_text(xText,yText+(i*48),string(blockSack[?k]))
		draw_sprite_stretched(object_get_sprite(k),-1,xPos,yPos+(50*i),32,32)
		i++;
	}	
}
