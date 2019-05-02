/// @description Insert description here
// You can write your code in this editor
if(global.pause)
{
	draw_set_color(blackCol);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_main);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2,room_height/2,"GAME PAUSED");
	draw_set_color(blackCol);
}