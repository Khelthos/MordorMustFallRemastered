/// @description Insert description here
// You can write your code in this editor
if(global.pause) 
{
	image_speed=0;
	exit;
}
else
{
	image_speed=1;
}
if (hp <= 0)
{
	instance_destroy();
}

x -= mspeed;