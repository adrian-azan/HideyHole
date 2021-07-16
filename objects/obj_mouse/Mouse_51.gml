/// @description Drill Blocks

obj_drill.visible = true

var blockSize = obj_worldGrid.blockSize
var xCell = floor(x/blockSize);
var yCell = floor(y/blockSize);
var occupied = ds_grid_get(obj_worldGrid.world,xCell,yCell)

with (targetBlock)
	{
		var drill = other.player.drill
		if (distance_to_point(drill.x, drill.y) <= 20)
		{
			hp -= drill.drillPower	
			show_debug_message(string(hp))
		}
		
		if hp <= 0
		{
			var blockSize = obj_worldGrid.blockSize
			var xCell = floor(x/blockSize);
			var yCell = floor(y/blockSize);
			
			var itemSize = sprite_width/blockSize;
			
			
			ds_grid_set_region(obj_worldGrid.world,xCell,
							yCell,xCell+itemSize-1,yCell+itemSize-1, 0)
			breaker = other.player
			instance_destroy(self)			
		}
	}
