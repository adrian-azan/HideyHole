/// @description Draw world grid

if (!DEBUG.debug) exit

draw_set_alpha(0.3);
draw_set_color(c_white)
for (var i = 0; i <= width; i++)
	draw_line((i*blockSize)-1,0,(i*blockSize)-1,display_get_height())
	
for (var i = 0; i <= height; i++)
	draw_line(0,(i*blockSize)-1,display_get_width(),(i*blockSize)-1)
	
draw_set_alpha(1);