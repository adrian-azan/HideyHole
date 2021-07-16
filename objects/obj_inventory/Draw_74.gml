/// @description Draw Hotbar
var dim = 64
for (var i = 0; i < size; i++)
{
	var cur = hotbar[|i];
	
	if (i == selected)
	{
		draw_set_color(c_yellow)
		draw_rectangle(cur.x,cur.y,cur.x+dim-1,cur.y+dim-1,false)	
	}	
}

if (showInventory)
{
	var i = 1;
	var dim = 32
	draw_text(70,100,string("Ore Sack"))
	for (var k = ds_map_find_first(blockSack); !is_undefined(k); k = ds_map_find_next(blockSack, k)) 
	{
		draw_text(70,100+(50*i),string(blockSack[?k]))
		draw_sprite_stretched(object_get_sprite(k),-1,30,100+(50*i),32,32)
		i++;
	}
	

	
}
