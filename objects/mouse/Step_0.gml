/// @description Find selected block

targetBlock = instance_position(x,y,obj_blockParent)
	
if (mouse_check_button(mb_right))
{
	show_debug_message(string(targetBlock))
	with (targetBlock)
	{
		if (distance_to_point(obj_drill.x, obj_drill.y) <= 20)
		{
			hp -= obj_drill.drillPower	
		}
		
		if hp <= 0
			instance_destroy(self)
	}
}