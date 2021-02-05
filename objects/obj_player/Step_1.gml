/// @description Insert description here

if (ySpeed < ySpeedMax)
	ySpeed += .2
else
	ySpeed = ySpeedMax
	
xSpeed = 1.5
if (position_meeting(x,y+bottom,obj_blockParent) or
	position_meeting(x+,y+bottom,obj_blockParent) or
	position_meeting(x,y+bottom,obj_blockParent)
	position_meeting(x,y+bottom,obj_ladder))
{
	ySpeed = 0;	
}

var size = (abs(sprite_width/2)-5) * facing

if (place_meeting(x+size,y,obj_blockParent))
	xSpeed = 0;

