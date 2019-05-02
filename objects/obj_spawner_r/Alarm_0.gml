/// @description Insert description here
// You can write your code in this editor
if(global.pause){
	alarm_set(0,random_range(35,60));
}
else
{
	instance_create_layer(x,y-4,"Instances",obj_enemy_r);
	alarm_set(0,random_range(35,60));
}