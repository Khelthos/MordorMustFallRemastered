/// @description Insert description here
// You can write your code in this editor
if(global.pause){
	alarm_set(1,random_range(60,120));
}
else
{
	instance_create_depth(x,y-8,-10,obj_enemy_r_hum);
	alarm_set(1,random_range(60,120));
}