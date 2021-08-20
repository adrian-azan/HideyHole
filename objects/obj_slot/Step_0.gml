/// @description Insert description here

var Mx = device_mouse_x_to_gui(0)
var My = device_mouse_y_to_gui(0)

if (mouse_check_button_pressed(mb_left) and point_in_rectangle(Mx,My,x,y,x+dim,y+dim))
{
	if (DEBUG.debug) show_debug_message("SWAPPING")
	if (owner == noone) exit;
	var swap = owner.player.playerMouse.mouseSlot.slotItem;
	var swapQ = owner.player.playerMouse.mouseSlot.itemQuantity
	
	owner.player.playerMouse.mouseSlot.slotItem = slotItem;
	owner.player.playerMouse.mouseSlot.itemQuantity = itemQuantity
	
	slotItem = swap;
	itemQuantity = swapQ;
	
		
	
}