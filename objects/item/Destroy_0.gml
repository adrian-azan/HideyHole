/// @description Insert description here

var drop = instance_create_depth(x,y,-100,obj_itemDrop)
with (drop)
{
	sprite_index = other.sprite_index;
	image_xscale *= .5;
	image_yscale *= .5;
	parentItem = other.object_index
	ySpeed = -4;
}