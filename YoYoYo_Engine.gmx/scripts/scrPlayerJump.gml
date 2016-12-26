if (place_meeting(x,y+(global.grav),objBlock) || onPlatform || place_meeting(x,y+(global.grav),objWater))
{
    vspeed = -jump;
    djump = 1;
    audio_play_sound(sndJump,0,false);
}
else if (djump == 1 || place_meeting(x,y+(global.grav),objWater2) || (global.infJump || global.debugInfJump))
{
    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump,0,false);
    
    if (!place_meeting(x,y+(global.grav),objWater3))
        djump = 0;  //take away the player's double jump
    else
        djump = 1;  //replenish djump if touching water3
}
