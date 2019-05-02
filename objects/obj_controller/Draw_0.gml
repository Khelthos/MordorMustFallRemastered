//Health bar position
posx=x
posy=y

//glow length
glow_length=global.max_hp/2; //glow

//hsv_inc
hsv_inc=abs(hsv_max-hsv_min)/global.max_hp; //incremental hsv

//glow length
glow_length=global.max_hp/2;

//glow speed
shine_speed=global.max_hp*glow_speed*0.01

//max hp bug (if your hp max, it will stop at max_hp)
if global.hp>global.max_hp global.hp=global.max_hp

pos_shine[0]-=shine_speed
if (pos_shine[0]<=-glow_length){
    pos_shine[0]=global.max_hp+glow_length
}
if pos_shine[0]<global.max_hp/2 {
    pos_shine[1]=pos_shine[0]+global.max_hp
    if pos_shine[1]>global.max_hp+glow_length+1 {
        pos_shine[1]=pos_shine[1]-global.max_hp
    }
} else pos_shine[1]-=shine_speed;

hsv=hsv_min
for (i= 0;i<global.hp;i++){
    //draw the color effect
    if hsv < hsv_max and hsv_effect { 
        hsv+=hsv_inc;
    }
    
    sat=saturation
    bright=brightness;
    for (j=0;j<=1;j++){
        if (pos_shine[j]-glow_length<=i and pos_shine[j]+glow_length>=i){ 
            sat=saturation+(glow_length-abs(pos_shine[j]-i))/glow_length *saturation_inc;
            bright=brightness+(glow_length-abs(pos_shine[j]-i))/glow_length *glow;
        }
    }
    
    //create the color
    col=make_colour_hsv(hsv,sat,bright)
    
    //draw the health fill
    draw_sprite_ext(spr_hp_bar_fill,0,posx+i,posy,1,1,0,col,1);
}

//draw the health center
for (i= 0;i<global.max_hp;i++){
    draw_sprite(spr_hp_bar_center,0,posx+i,posy);
}

//draw the health left bar, adjust if needed
left_posx=0
left_posy=0
draw_sprite(spr_hp_bar_left,0,posx+left_posx,posy+left_posy);


//draw the health right bar, adjust if needed
right_posx=0
right_posy=0
draw_sprite(spr_hp_bar_right,0,posx+global.max_hp+right_posx,posy+right_posy);