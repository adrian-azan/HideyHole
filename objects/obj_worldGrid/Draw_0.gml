/// @description Debug draw world grid


if (!debug) exit
draw_set_alpha(0.3);


for (var i = 0; i < room_width/16; i++)
	draw_line((i*16)-1,0,(i*16)-1,room_height)
	
for (var i = 0; i < room_height/16; i++)
	draw_line(0,(i*16)-1,room_width,(i*16)-1)
	
	draw_set_alpha(1);