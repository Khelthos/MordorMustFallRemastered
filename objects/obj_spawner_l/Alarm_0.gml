/// @description Insert description here
// You can write your code in this editor
if(global.pause){
	alarm_set(0,random_range(35,60));
}
else
{
	instance_create_depth(x,y-4,-10,obj_enemy_l);
	alarm_set(0,random_range(35,60));
}