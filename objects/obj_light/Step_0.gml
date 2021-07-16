/// @description Insert description here


if (surface_exists(surf))
{
	surface_set_target(surf);
	
	draw_set_color(c_black);
	if (!debug) draw_set_alpha(1);
	draw_rectangle(0,0,room_width,room_height,0);
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	if (!debug) draw_set_alpha(.8);
	with (obj_player)
	{
		draw_circle(x+random_range(-1,1), y+random_range(-1,1),50,false);
		if (!other.debug) draw_set_alpha(.05);
		draw_circle(x, y,100,false);
		//draw_circle_colour(x, y, 50, c_black, c_white, 0);
}	
		
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
}

else
{
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
}