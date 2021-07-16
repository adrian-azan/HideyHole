/// @description Adjust players motion

if (ySpeed < ySpeedMax)
	ySpeed += .25;
else
	ySpeed = ySpeedMax;

	
if (place_meeting(x,y+2,obj_blockParent))
{
	ySpeed = 0;	
	canJump = true
}


if (ySpeed < 0 and place_meeting(x,y-2,obj_blockParent))
{
	ySpeed *= -1	
}




