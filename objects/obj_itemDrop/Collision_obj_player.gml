/// @description Insert description here

//Checks inventory for item
var index = findItem(other.playerInventory.inventory, parentItem);
if index != -1
{	
	other.playerInventory.inventory[|index].itemQuantity += 1;
	instance_destroy();
	exit;
}

//Checks hotbar for item,
index = findItem(other.playerInventory.hotbar, parentItem)	
if index != -1
{
	other.playerInventory.hotbar[|index].itemQuantity += 1;
	instance_destroy();
	exit;
}

var index = findEmpty( other.playerInventory.inventory);
if index != -1
{
	other.playerInventory.inventory[|index].itemQuantity = 1;
	other.playerInventory.inventory[|index].slotItem = parentItem
	instance_destroy();
	exit;
}

var index = findEmpty( other.playerInventory.hotbar);
if index != -1
{
	other.playerInventory.hotbar[|index].itemQuantity = 1;
	other.playerInventory.inventory[|index].slotItem = parentItem
	instance_destroy();
	exit;
}