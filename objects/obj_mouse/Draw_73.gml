/// @description Highlight selected block
with (targetBlock)
{
	draw_set_color(c_yellow)
	draw_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,true);
}

if (mouseSlot.slotItem != noone)
{
	draw_sprite(object_get_sprite(mouseSlot.slotItem),-1,x,y)
}
//mouseSlot.visible = mouseSlot.slotItem != noone ? true : false

