/// @description Climb Up

if floor(place_meeting(x,y-2,obj_blockParent) == false and
		place_meeting(x,y,obj_dirt_ladder))
{
	ySpeed = -.4;
	canJump = true;

}