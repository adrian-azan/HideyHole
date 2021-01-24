/// @description Insert description here

world = ds_grid_create(room_width/16,room_height/16)

debug = 1
size = 3

selected = 0
items = ds_list_create()
items[|0] = instance_create_depth(16,16,-100,obj_slot)
items[|0].slotItem = obj_ladder

items[|1] = instance_create_depth(32,16,-100,obj_slot)
items[|2] = instance_create_depth(48,16,-100,obj_slot)