/// @description Move Right


if (facing == -1)
{
	facing *= -1
	image_xscale *= -1
	drill.image_xscale *= -1
}

x += xSpeed * facing
