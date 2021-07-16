/// @description Player Hotbar


size = 2
inventorySize = 4

player = noone
showInventory = true

selected = 0
hotbar = ds_list_create()
inventory = ds_list_create()
blockSack = ds_map_create()

blockSack[?obj_dirt] = 5;
blockSack[?obj_coal] = 5;

ds_list_add(hotbar,instance_create_depth(16,16,1000,obj_slot))
ds_list_add(hotbar,instance_create_depth(64+16,16,1000,obj_slot))


hotbar[|0].owner = self
hotbar[|1].owner = self
hotbar[|0].slotItem = noone;
hotbar[|1].slotItem = noone;


for (var i = 0; i < inventorySize;i++)
{
	ds_list_add(inventory,instance_create_depth(68*(i)+16,128,1000,obj_slot))
	inventory[|i].owner = self
	inventory[|i].visible = false;
}

hotbar[|0].slotItem = obj_dirt_ladder;
hotbar[|0].itemQuantity = 15;
