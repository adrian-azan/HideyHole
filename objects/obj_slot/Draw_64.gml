/// @description Draw slot and content
var dim = 64

//if (!visible) exit;
draw_sprite_stretched(sprite_index, -1,x,y,dim,dim)
if( slotItem != noone)
{
	draw_sprite_stretched(object_get_sprite(slotItem),-1,x+dim*.15,y+dim*.15,dim*.7,dim*.7)	
	draw_set_color(c_white)
	var amount = itemQuantity
	draw_text(x,y+dim,string(amount))
}

if (text != noone)
{
	var d = text_position;
	draw_set_halign(fa_center);
	draw_set_valign(fa_top)
	if (d == "N")
		draw_text(x+1/2*dim,y,string(text))
	else if (d == "E")
		draw_text(x+dim,y+1/2*dim,string(text))
	else if (d == "S")
		draw_text(x,y+dim,string(text))
	else if (d == "W")
		draw_text(x,y+1/2*dim,string(text))
}




