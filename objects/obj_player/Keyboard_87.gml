/// @description Climb Up

if floor(place_meeting(x,y-2,obj_collidable) == false and
		place_meeting(x,y,obj_iron_ladder))
{
	ySpeed = -.4;
	canJump = true;

}