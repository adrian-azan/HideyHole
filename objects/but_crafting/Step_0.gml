/// @description Insert description here
if (!visible) exit;

var Mx = device_mouse_x_to_gui(0)
var My = device_mouse_y_to_gui(0)

if (point_in_rectangle(Mx,My,x,y,x+dim,y+dim))
{	

	if (mouse_check_button_pressed(mb_left))
	{
			master.craftSignal = cover;
	}
}