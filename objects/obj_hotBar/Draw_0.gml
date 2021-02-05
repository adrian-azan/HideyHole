/// @description Draw HotBar

drawX = 32 //view_xport[0]
drawY = 32
for (var i = 0; i < size; i++)
{
	var dim = 14
	var cur = items[|i];
	
	if (i == selected)
	{
		draw_set_color(c_yellow)
		draw_rectangle(cur.x,cur.y,cur.x+dim,cur.y+dim,false)	
	}
	
	if( cur.slotItem != noone)
		draw_sprite_stretched(object_get_sprite(cur.slotItem),-1,cur.x,cur.y,dim,dim)
}

