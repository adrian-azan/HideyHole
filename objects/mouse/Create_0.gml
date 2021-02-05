/// @description Mouse Setup

/*
mouse handles all mouse related events:
	- left clicking to place/use item
	- hovering over block

Can target a single block to damage
mouse also has slot for moving items in inventory
*/
targetBlock = noone
mouseSlot = instance_create_depth(0,0,1000,obj_slot)
mouseSlot.visible = false
depth = -1000