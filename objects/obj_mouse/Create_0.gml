/// @description Mouse Setup

/*
mouse handles all mouse related events:
	- left clicking to place/use item
	- hovering over block

Can target a single block to damage
mouse also has slot for moving items in inventory
*/
targetBlock = noone
player = noone
mouseSlot = create_slot(instance_create_depth(16,300,1000,obj_slot),
						"N","mouse");
mouseSlot.visible = false
depth = 1000