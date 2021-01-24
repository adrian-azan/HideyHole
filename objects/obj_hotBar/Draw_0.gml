/// @description Insert description here

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

if (!debug) exit
draw_set_alpha(0.3);


for (var i = 0; i < room_width/16; i++)
	draw_line((i*16)-1,0,(i*16)-1,room_height)
	
for (var i = 0; i < room_height/16; i++)
	draw_line(0,(i*16)-1,room_width,(i*16)-1)
	
	draw_set_alpha(1);