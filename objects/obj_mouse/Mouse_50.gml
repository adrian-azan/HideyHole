/// @description Place Item
if (distance_to_object(player) >=4*BLOCK_SIZE) exit;

//Need to add distance from player check
with (player.inventory)
{
	var blockSize = obj_worldGrid.blockSize
	var i = hotbar[|selected]	
	var quantity = hotbar[|selected].itemQuantity	
	
	if (other.mouseSlot.slotItem != noone)
	{
		i = other.mouseSlot;
		quantity = other.mouseSlot.itemQuantity
	}
	
	if (i.slotItem == noone or quantity <= 0) exit;
	
	
	
	
	var xCell = floor(other.x/blockSize)
	var yCell = floor(other.y/blockSize)
	if (xCell < 0 or yCell < 0) exit;
	
	var itemSize = object_get_sprite(i.slotItem);
	itemSize = sprite_get_width(itemSize)/blockSize;
	
	var occupied = ds_grid_get_sum(obj_worldGrid.world,xCell,
									yCell,xCell+itemSize-1,yCell+itemSize-1);
	
	if (occupied == 0)
	{
		ds_grid_set_region(obj_worldGrid.world,xCell,
							yCell,xCell+itemSize-1,yCell+itemSize-1, i.slotItem)
		instance_create_depth(xCell*blockSize,yCell*blockSize,-100,i.slotItem)	
		
		i.itemQuantity = quantity-1;
		if (quantity-1 == 0)
		{
			i.slotItem = noone	
		}
	}
}