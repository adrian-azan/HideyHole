/// @description Insert description here

//Checks inventory for item
var index = findItem(other.inventory.inventory, parentItem);
if index != -1
{	
	other.inventory.inventory[|index].itemQuantity += 1;
	instance_destroy();
	exit;
}

//Checks hotbar for item,
index = findItem(other.inventory.hotbar, parentItem)	
if index != -1
{
	other.inventory.hotbar[|index].itemQuantity += 1;
	instance_destroy();
	exit;
}

var index = findEmpty( other.inventory.inventory);
if index != -1
{
	other.inventory.inventory[|index].itemQuantity = 1;
	other.inventory.inventory[|index].slotItem = parentItem
	instance_destroy();
	exit;
}

var index = findEmpty( other.inventory.hotbar);
if index != -1
{
	other.inventory.hotbar[|index].itemQuantity = 1;
	other.inventory.inventory[|index].slotItem = parentItem
	instance_destroy();
	exit;
}