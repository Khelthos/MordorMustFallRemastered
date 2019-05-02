/// @description Insert description here
// You can write your code in this editor
if(global.pause) exit;
if (mouse_check_button_released(mb_left))
{
	instance_create_depth(x,y,-1,obj_fireball);
}