///flips the current gravity

//set gravity
global.grav = -global.grav;

//flip the player
with (objPlayer)
{
    djump = 1;
    vspeed = 0;
    
    jump = 8.5 * global.grav;
    jump2 = 7 * global.grav;
    gravity = 0.4 * global.grav;
    
    scrSetPlayerMask();
    
    y += 4 * global.grav;
}
