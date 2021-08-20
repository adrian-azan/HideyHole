/// @description Insert description here
var Mx = device_mouse_x_to_gui(0)
var My = device_mouse_y_to_gui(0)

if (mouse_check_button_pressed(mb_left) and point_in_rectangle(Mx,My,x,y,x+dim,y+dim))
{
	event_user(0)
}

else if (mouse_check_button_pressed(mb_right) and point_in_rectangle(Mx,My,x,y,x+dim,y+dim))
{
	event_user(1)
}

else if (mouse_check_button_pressed(mb_middle) and point_in_rectangle(Mx,My,x,y,x+dim,y+dim))
{
	event_user(2)
}