/// @description Insert description here



if (craftSignal == noone and
	master.player.playerInventory.showInventory == false) exit;


master.craftSignal = craftSignal
craftSignal = noone

var recipes = global.recipes
var supplies = master.player.playerInventory.blockSack
var col = 1
var row = 1

while (ds_list_size(craftables) > 0)
{
	instance_destroy(craftables[|0])
	ds_list_delete(craftables,0)			
}	
ds_list_clear(craftables)


for (var r = ds_map_find_first(recipes); !is_undefined(r); r = ds_map_find_next(recipes, r)) 
{
	var craftable = true

	for (var o = ds_map_find_first(recipes[?r]); !is_undefined(o); o = ds_map_find_next(recipes[?r],o))
	{
		if (is_undefined(recipes[?r][?o]))
			continue;
		
		if (recipes[?r][?o] > supplies[?o])
		{
			craftable = false;
			break;
		}
	}
	
	if (craftable == true)
	{
		var button = instance_create_depth(10+(col*75),200+(row*75),100,but_crafting)
		button.image_xscale = 4
		button.image_yscale = 4
		button.cover = r
		button.master = self
		ds_list_add(craftables, button)		
		if (col % 5 == 0)
		{
			col = 0
			row += 1
		}
		col ++;
	}
	
}
