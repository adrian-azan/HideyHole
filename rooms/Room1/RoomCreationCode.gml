monitor1X = -1500
monitor1Y = 30

monitor2X = 900
monitor2Y = 30

window_set_position(monitor2X,monitor2Y)

for (var row = 96; row < room_height; row +=4)
{
	for (var col = 0; col <room_width; col +=4)
		instance_create_depth(col,row,-100,obj_dirt)
}