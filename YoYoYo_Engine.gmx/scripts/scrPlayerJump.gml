if (place_meeting(x,y+(global.grav),objBlock) || onPlatform || place_meeting(x,y+(global.grav),objWater))
{
    vspeed = -jump;
    djump = 1;
    audio_play_sound(sndJump,0,0);
}
else if (djump == true || place_meeting(x,y+(global.grav),objWater2) || global.infJump)
{
    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump,0,0);
    
    if (!place_meeting(x,y+(global.grav),objWater3))
        djump = 0;
    else
        djump = 1;  //replenish djump if touching water3
}
