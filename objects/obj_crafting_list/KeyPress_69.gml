/// @description Insert description here
if (visible == true)// or master.player.inventory.showInventory == false)
{
	for (var i = 0; i < ds_list_size(craftables);i++)
	{
		craftables[|i].visible = false
	}
	visible = false
}

else if (visible == false)
{
	for (var i = 0; i < ds_list_size(craftables);i++)
	{
		craftables[|i].visible = true;
	}
	visible = true
}