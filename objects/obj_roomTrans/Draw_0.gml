/// @description Insert description here
// You can write your code in this editor
fadeAlpha = clamp(fadeAlpha + (fadeState*fadespeed),0,1);

if (fadeAlpha == 1)
{
	room_goto_next();
	fadeState = -1;
}

if (fadeAlpha == 0) && (fadeState == -1) 
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(fadeAlpha);
draw_rectangle(xv,yv,xv+wv,yv+hv,0);
draw_set_alpha(1);