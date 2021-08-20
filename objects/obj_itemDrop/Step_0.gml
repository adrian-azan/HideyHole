/// @description Insert description here


if (distance_to_object(obj_player) < 10)
{
	var playerDirection = point_direction(x,y,obj_player.x, obj_player.y)
	motion_add(playerDirection,maxSpeed)
	if (speed > maxSpeed) speed = maxSpeed;
}

else if(place_meeting(x,y+2,obj_collidable))
{
	ySpeed = 0;
}

else
{
	ySpeed += .5;
	speed = 0;
	if (ySpeed > maxSpeed) ySpeed = maxSpeed;
}



y += ySpeed;
