/// @description Make Invisible
show_debug_message("INVISIBLE")
for (var i = 0; i < ds_list_size(craftables);i++)
{
	craftables[|i].visible = false
}
visible = false