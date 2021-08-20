/// @description Insert description here
var dim = 64
for (var i = 0; i < size; i++)
{
	var cur = hotbar[|i];
	
	if (i == selected)
	{
		draw_set_color(c_yellow)
		draw_rectangle(cur.x,cur.y,cur.x+dim-1,cur.y+dim-1,true)	
	}	
}

