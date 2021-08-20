/// @description Move Left


if (facing == 1) 
{
	facing *= -1
	image_xscale *= -1
	drill.image_xscale *= -1
}

if (place_meeting(x+2*facing,y,obj_collidable) == false)
	x += xSpeed * facing


