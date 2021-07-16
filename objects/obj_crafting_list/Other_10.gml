/// @description Make Visible
show_debug_message("VISIBLE")
for (var i = 0; i < ds_list_size(craftables);i++)
{
	craftables[|i].visible = true;
}
visible = true